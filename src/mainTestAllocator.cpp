//
// Created by marko on 20.4.22..
//
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/Riscv.hpp"

//void userMain();
/*
void printList() {
    mprintString("---------FREE BLOCKS---------\n");
    if(!MemAllocator::headPtr)
        mprintString("KLASA NIJE INICIJALIZOVANA\n");
    for(MemAllocator::FreeBlocks * curr = MemAllocator::headPtr; curr; curr = curr->next){
        mprintString("Adresa pocetka bloka ");
        printInteger((uint64)curr);
        mprintString("\nVelicina bloka ");
        printInteger(curr->size);
        mprintString("\n");
    }
    mprintString("---------------------------------\n\n");
}

int main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    MemAllocator::initialize();

    printList();
    uint64 * st1 = new uint64[DEFAULT_STACK_SIZE];
    printList();
    delete st1;
    printList();
    //TCB* t1 = new TCB::TCB(nullptr, TIME_SLICE, arg, st);//
    return 0;
}*/

//int main()
//{
/*
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    mprintString("ovde\n");
    uint64* sp = new uint64[DEFAULT_STACK_SIZE];
    mprintString("uspesno\n");
    delete sp;
    return 0;
}*/
    //Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    //MemAllocator::initialize();
    //threads[0] = TCB::createThread(nullptr, nullptr, nullptr);
    //TCB::running = threads[0];

    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    //console_handler();
    //mprintString("P\n");
    //TCB *threads[1];
//     char c = __getc();
    // mprintString("ovo je ");
    // __putc(c);
    //mprintString("uspelo");


    //threads[0] = TCB::createThread(nullptr, nullptr, nullptr);
    //TCB::running = threads[0];
    //userMain();

    //mprintString("usao\n");
    //delete threads[0];
    //mprintString("Finished\n");

   // __asm__ volatile("li a0,0x5555");
    //__asm__ volatile("li a1,0x100000");
    //__asm__ volatile("sw a0, 0(a1)");

    //return 0;
//}

/*
    //za niti
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    MemAllocator::initialize();
    TCB *threads[5];
    mprintString("p\n");


    threads[0] = TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running = threads[0];
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    threads[1] = TCB::createThread(mworkerBodyA, nullptr, nullptr);
    //mprintString("ThreadA created\n");
    mprintString("A\n");
    threads[2] = TCB::createThread(mworkerBodyB, nullptr, nullptr);
    //mprintString("ThreadB created\n");
    mprintString("B\n");
    threads[3] = TCB::createThread(mworkerBodyC, nullptr, nullptr);
    //mprintString("ThreadC created\n");
    mprintString("C\n");
    threads[4] = TCB::createThread(mworkerBodyD, nullptr, nullptr);
    //mprintString("ThreadD created\n");
    mprintString("D\n");
    //Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }
    mprintString("Finished\n");

    __asm__ volatile("li a0,0x5555");
    __asm__ volatile("li a1,0x100000");
    __asm__ volatile("sw a0, 0(a1)");

    return 0;
}
*/

/*
//za alokaciju memorije


void printList() {
    mprintString("---------FREE BLOCKS---------\n");
    if(!MemAllocator::headPtr)
        mprintString("KLASA NIJE INICIJALIZOVANA\n");
    for(MemAllocator::FreeBlocks * curr = MemAllocator::headPtr; curr; curr = curr->next){
        mprintString("Adresa pocetka bloka ");
        printInteger((uint64)curr);
        mprintString("\nVelicina bloka ");
        printInteger(curr->size);
        mprintString("\n");
    }
    mprintString("---------------------------------\n\n");
}

int main()
{
    printInteger(sizeof(MemAllocator::FreeBlocks));
    mprintString("\n");
    printList();
    MemAllocator::initialize();
    printList();
    void* mem1 =
        MemAllocator::mem_alloc(10);
    printList();
    void* mem2 = MemAllocator::mem_alloc(20);
    printList();
    void* mem3 = MemAllocator::mem_alloc(30);
    printList();
    void* mem4 = MemAllocator::mem_alloc(40);
    printList();
    MemAllocator::mem_free(mem3);
    printList();
    MemAllocator::mem_free(mem1);
    printList();
    mprintString("Ulazi 5");
    void* mem5 = MemAllocator::mem_alloc(5);
    printList();
    MemAllocator::mem_free(mem2);
    printList();
    void* mem6 = MemAllocator::mem_alloc(5);
    printList();
    MemAllocator::mem_free(mem4);
    printList();
    MemAllocator::mem_free(mem6);
    printList();
    MemAllocator::mem_free(mem5);
    printList();
    return 0;
}
*/