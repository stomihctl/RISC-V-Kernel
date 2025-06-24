#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/Riscv.hpp"
#include "../h/cconsole.hpp"
//#include "../test/ConsumerProducer_CPP_API_test.hpp"

void idleFun(void* arg){
    while(true){
        thread_dispatch();
    }
}

void consoleRun(void* arg)
{
    while(true) {
        //char s = *(char *) CONSOLE_STATUS;
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            *(char *) CONSOLE_TX_DATA = Cconsole::getChOut();
            //s = *(char *) CONSOLE_STATUS;
        }
    }
}

void initialization(){
    MemAllocator::initialize();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Cconsole::init_consl();
}
/*void userMain(){
    testConsumerProducer();
}*/
void userMain();

void userMainWrapper(void* args){
    userMain();
}
TCB* mainThread;
TCB* idleThread;
TCB* putcThread;
int main()
{
    initialization();

    mainThread = TCB::createThread(nullptr,nullptr,nullptr);
    TCB::running = mainThread;
    putcThread = TCB::createThread(&consoleRun, nullptr, nullptr);
    idleThread = TCB::createThread(&idleFun,nullptr,nullptr);

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t userThread;
    thread_create(&userThread,&userMainWrapper,nullptr);

    while(!((TCB*)userThread)->isFinished()){
        thread_dispatch();
    }

    mprintString("vratio se u main\n");

    thread_dispatch();



    __asm__ volatile("li a0,0x5555");
    __asm__ volatile("li a1,0x100000");
    __asm__ volatile("sw a0, 0(a1)");
    return 0;
}

/*
void userMain();

int main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    MemAllocator::initialize();
    TCB* mainthr = TCB::createThread(nullptr,nullptr,nullptr,true);
    TCB::running = mainthr;
    TCB* idle = TCB::createThread(nullptr, nullptr, nullptr, true);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    userMain();
    mprintString("vratio se u main\n");
    __asm__ volatile("li a0,0x5555");
    __asm__ volatile("li a1,0x100000");
    __asm__ volatile("sw a0, 0(a1)");
    printInteger(idle->readStatus());
    return 0;
}
*/