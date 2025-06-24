// #include "../lib/console.h"
// #include "../h/tcb.hpp"
// #include "../h/workers.hpp"
// #include "../h/print.hpp"
// #include "../h/Riscv.hpp"
//
// int main()
// {
//     //za niti
//     Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//     //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//     MemAllocator::initialize();
//     //TCB *threads[5];
//     mprintString("p\n");
//     TCB* mainthr;
//     TCB* usrthr;
//     thread_t usrthr2;
//
//     //threads[0]
//     mainthr = TCB::createThread(nullptr, nullptr, nullptr, true);
//     //TCB::running = threads[0];
//     TCB::running = mainthr;
//     Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//     //threads[1] =
//     usrthr = TCB::createThread(mworkerBodyA, nullptr, nullptr, false);
//     thread_create(&usrthr2, mworkerBodyB, nullptr);
//     //mprintString("ThreadA created\n");
//     //mprintString("A\n");
//     //threads[2] = TCB::createThread(mworkerBodyB, nullptr, nullptr);
//     //mprintString("ThreadB created\n");
//     //mprintString("B\n");
//     //threads[3] = TCB::createThread(mworkerBodyC, nullptr, nullptr);
//     //mprintString("ThreadC created\n");
//     //mprintString("C\n");
//     //threads[4] = TCB::createThread(mworkerBodyD, nullptr, nullptr);
//     //mprintString("ThreadD created\n");
//     //mprintString("D\n");
//     //Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//     //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//
//     while (!(usrthr->isFinished() && ((TCB*)usrthr2)->isFinished()))
//     {
//         TCB::yield();
//     }
//
//     /*while (!(threads[1]->isFinished() &&
//              threads[2]->isFinished() &&
//              threads[3]->isFinished() &&
//              threads[4]->isFinished()))
//     {
//         TCB::yield();
//     }
//
//     for (auto &thread: threads)
//     {
//         delete thread;
//     }*/
//     mprintString("Finished\n");
//
//     __asm__ volatile("li a0,0x5555");
//     __asm__ volatile("li a1,0x100000");
//     __asm__ volatile("sw a0, 0(a1)");
//
//     return 0;
// }