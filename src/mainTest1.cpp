// #include "../lib/console.h"
// #include "../h/tcb.hpp"
// #include "../h/workers.hpp"
// #include "../h/print.hpp"
// #include "../h/Riscv.hpp"
//
//  void userMain();
//
//  int main()
//  {
//      //za niti
//      Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//      //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//      MemAllocator::initialize();
//      //TCB *threads[5];
//      thread_t threads[5];
//      //mprintString("p\n");
//      //thread_t usrthread;
//      //thread_t usrthread2;
//
//      //TCB* mainThread = TCB::createThread(nullptr, nullptr, nullptr);
//      //TCB::running = mainThread;
//      //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//      mprintString("pocetak\n");
//      //threads[0] = TCB::createThread(nullptr, nullptr, nullptr);
//      thread_create(&threads[0], nullptr, nullptr);
//      TCB::running = (TCB*)threads[0];
//      Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//      Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//      //threads[1] = TCB::createThread(mworkerBodyA, nullptr, nullptr);
//      //Scheduler::print();
//      //thread_create(&usrthread, mworkerBodyA, nullptr);
//      //mprintString("user thread1\n");
//      //thread_create(&usrthread2, mworkerBodyB, nullptr);
//      //mprintString("user thread2\n");
//      thread_create(&threads[1], mworkerBodyA, nullptr);
//      mprintString("ThreadA created\n");
//      //printInteger(r);
//      //mprintString("A\n");
//      //threads[2] = TCB::createThread(mworkerBodyB, nullptr, nullptr);
//      thread_create(&threads[2], mworkerBodyB, nullptr);
//      mprintString("ThreadB created\n");
//      //printInteger(r);
//      //mprintString("B\n");
//      //threads[3] = TCB::createThread(mworkerBodyC, nullptr, nullptr);
//      thread_create(&threads[3], mworkerBodyC, nullptr);
//      mprintString("ThreadC created\n");
//      //printInteger(r);
//      //mprintString("C\n");
//      //threads[4] = TCB::createThread(mworkerBodyD, nullptr, nullptr);
//      thread_create(&threads[4], mworkerBodyD, nullptr);
//      mprintString("ThreadD created\n");
//      //printInteger(r);
//      //mprintString("D\n");
//      //Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//      //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//
//      while (!(((TCB*)threads[1])->isFinished() &&
//               ((TCB*)threads[2])->isFinished() &&
//               ((TCB*)threads[3])->isFinished() &&
//               ((TCB*)threads[4])->isFinished()))
//      {
//          thread_dispatch();
//      }
//
//      mprintString("zavrsio sve workere\n");
//      //Scheduler::print();
//
//      /*while (!(((TCB*)usrthread)->isFinished() && ((TCB*)usrthread2)->isFinished()))
//      {
//          //mprintString("p\n");
//          thread_dispatch();
//      }*/
//
//      /*for (auto &thread: threads)
//      {
//          delete thread;
//      }*/
//      /*for(int i = 1; i < 5; i++)
//      {
//          delete (TCB*)threads[i];
//      }*/
//      mprintString("Finished\n");
//
//      __asm__ volatile("li a0,0x5555");
//      __asm__ volatile("li a1,0x100000");
//      __asm__ volatile("sw a0, 0(a1)");
//
//      return 0;
//  }