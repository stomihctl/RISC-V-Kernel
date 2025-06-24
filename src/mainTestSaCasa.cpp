// #include "../lib/console.h"
// #include "../h/tcb.hpp"
// #include "../h/workers.hpp"
// #include "../h/print.hpp"
// #include "../h/Riscv.hpp"
//
// void userMain();
//
// /*void idleFunction(void* a){
//     while(1){
//         thread_dispatch();
//     }
// }*/
//
// int main()
// {
//     //za niti
//     Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//     MemAllocator::initialize();
//
//     thread_t usrthread2;
//     thread_t usrthread1;
//
//     TCB* mainThread = TCB::createThread(nullptr, nullptr, nullptr, true);
//
//     TCB::running = mainThread;
//     //TCB* idleThread = TCB::createThread(&idleFunction,nullptr,nullptr,true);
//
//
//     thread_create(&usrthread1, mworkerBodyA, nullptr);
//     //mprintString("user thread1\n");
//     thread_create(&usrthread2, mworkerBodyB, nullptr);
//     //mprintString("user thread2\n");
//     Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//     while (!(((TCB*)usrthread1)->isFinished() && ((TCB*)usrthread2)->isFinished()))
//     {
//         //mprintString("ovdee\n");
//         thread_dispatch();
//     }
//
//     mprintString("Finished\n");
//
//     __asm__ volatile("li a0,0x5555");
//     __asm__ volatile("li a1,0x100000");
//     __asm__ volatile("sw a0, 0(a1)");
//
//     return 0;
// }