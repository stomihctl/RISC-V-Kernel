#include "../h/Riscv.hpp"
#include "../h/cconsole.hpp"
#include "../h/MemAllocator.hpp"
#include "../h/print.hpp"
#include "../h/semaphore.hpp"
#include "../h/sleepList.hpp"
#include "../lib/hw.h"
#include "../h/tcb.hpp"


void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

extern "C" void Riscv::handleSupervisorTrap()
{
    //prvo citamo scause registar da bi privatili samo ecall (korisnicki ili sistemski)
    uint64 scauseReg = r_scause();
    if(scauseReg==0x8000000000000001UL){//
        //interrupt: yes; cause code: supervisor software interrupt (timer)
        //obrada tajmera
        //registar koji cuva adresu iz prekidne rutine sepc

        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();
        mc_sip(SIP_SSIE);
        //za threadsleep lupiti takt
        sleepList::clock();
        sleepList::cleanFinished();
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            TCB::dispatch();
        }
        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if(scauseReg==0x8000000000000009UL){
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();
        //prekid od tastature
        if(plic_claim() == CONSOLE_IRQ) {
            while (*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
                Cconsole::putChIn(*(char *) CONSOLE_RX_DATA);
            }
            plic_complete(CONSOLE_IRQ);
        }
        //za sada koristimo iz date biblioteke
        //console_handler();
        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if(scauseReg == 0x08 || scauseReg == 0x09)
    {
        //sepc i sstatus citamo stare sepc uvecavamo da po povratku iz prekida ne bi ponovo izvrsavao prekid

        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
        uint64 code;
        __asm__ volatile("mv %0, a0" : "=r" (code));
        if(code == 0x01)
        {
            //mem alloc
            size_t size;
            uint64 rsize;
            __asm__ volatile("mv %0, a1" : "=r" (rsize));
            size = (size_t)rsize;
            void* p = MemAllocator::mem_alloc(size);
            uint64 ptr = (uint64)p;
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ptr));
        }
        else if(code == 0x02)
        {
            //mem free
            void* ptr;
            uint64 rptr;
            __asm__ volatile("mv %0, a1" : "=r" (rptr));
            ptr = (void*)rptr;
            uint64 ret = (uint64)MemAllocator::mem_free(ptr);
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
        }
        else if(code == 0x11)
        {
            //thread_create
            TCB** handle;
            TCB::Body body;
            void* arg;


            __asm__ volatile("mv %0, a1" : "=r" (handle));
            __asm__ volatile("mv %0, a2" : "=r" (body));
            __asm__ volatile("mv %0, a3" : "=r" (arg));

            *handle = TCB::createThread(body, arg, nullptr);
            uint64 ret = -1;
            if(*handle == nullptr)
            {
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
            else
            {
                ret = 0;
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }

        }
        else if(code == 0x12){
            //thread_exit
            TCB::running->setFinished(true);
            TCB::dispatch();
            uint64 ret = 0;
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
        }
        else if (code == 0x13) {
            //thread_dispatch
            TCB::dispatch();
        }
        else if (code == 0x21)
        {
            //sem_open
            unsigned init;
            Semaphore** handle;
            uint64 hndl;
            __asm__ volatile("mv %0, a2" : "=r" (init));
            __asm__ volatile("mv %0, a1" : "=r" (hndl));

            handle = (Semaphore**)hndl;

            *handle = Semaphore::initSem(init);
            uint64 ret = -1;
            if(*handle == nullptr)
            {
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
            else
            {
                ret = 0;
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }

        }
        else if(code == 0x22)
        {
            //sem_close
            Semaphore* handle;
            uint64 hndl;
            __asm__ volatile("mv %0, a1" : "=r" (hndl));
            handle = (Semaphore*)hndl;

            uint64 ret = -1;
            if(handle == nullptr)
            {
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
            else
            {
                ret = handle->close();
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x23)
        {
            //sem_wait
            Semaphore* handle;
            uint64 hndl;
            __asm__ volatile("mv %0, a1" : "=r" (hndl));
            handle = (Semaphore*)hndl;

            uint64 ret = -1;
            if(handle == nullptr)
            {
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
            else
            {
                ret = handle->mwait();
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x24)
        {
            //sem_signal
            Semaphore* handle;

            __asm__ volatile("mv %0, a1" : "=r" (handle));
            uint64 ret = -1;
            if(handle == nullptr)
            {
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
            else
            {
                ret = handle->msignal();
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x25)
        {
            //sem_timedwait
            Semaphore* handle;
            uint64 hndl;
            time_t timeout;
            uint64 tmt;
            __asm__ volatile("mv %0, a1" : "=r" (hndl));
            __asm__ volatile("mv %0, a2" : "=r" (tmt));
            handle = (Semaphore*)hndl;
            timeout = (time_t)tmt;

            uint64 ret = -1;
            if(handle == nullptr)
            {
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
            else
            {
                ret = handle->sem_timedwait(timeout);
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x26)
        {
            //sem_trywait
            Semaphore* handle;
            uint64 hndl;
            __asm__ volatile("mv %0, a1" : "=r" (hndl));
            handle = (Semaphore*)hndl;

            uint64 ret = -1;
            if(handle == nullptr)
            {
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
            else
            {
                ret = handle->sem_trywait();
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x31)
        {
            //time_sleep
            uint64 ret = -1;
            time_t time;
            uint64 t;
            __asm__ volatile("mv %0, a1" : "=r" (t));
            time = (time_t)t;
            if(time == 0)
            {
                ret = 0;
            }
            else if(time > 0)
            {
                int s = TCB::running->readStatus();
                s = s | 2;
                TCB::running->setStatus(s);
                sleepList::add(TCB::running, time);
                thread_dispatch();
                ret = 0;
            }
            else
            {
                ret = -2;
            }
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
        }
        else if(code == 0x41)
        {
            //getc()
            char c = Cconsole::getChIn();
            __asm__ volatile("sd %0, 80(fp)" : : "r"(c));
        }
        else if(code == 0x42)
        {
            //putc
            uint64 c;
            char ch;
            __asm__ volatile("mv %0, a1" : "=r" (c));
            ch = (char)c;
            //__putc(ch);
            Cconsole::putChOut(ch);

        }
        else
        {
            //TCB::dispatch();
        }
        //upisujemo nove
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else
    {
        //unexpected trap cause
        mprintString("\nunexpected trap cause: ");
        printInteger(scauseReg);
        mprintString("\n");
        thread_dispatch();
        __asm__ volatile("li a0,0x5555");
        __asm__ volatile("li a1,0x100000");
        __asm__ volatile("sw a0, 0(a1)");
    }
}