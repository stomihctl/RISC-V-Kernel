#include "../h/tcb.hpp"
#include "../h/Riscv.hpp"
#include "../h/scheduler.hpp"
TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body,void* arg,uint64* st)
{
    if(st == nullptr)
    {
        st = new uint64[DEFAULT_STACK_SIZE];
    }
    return new TCB(body, TIME_SLICE, arg, st);
}

void TCB::yield()
{
    thread_dispatch();
}

void TCB::dispatch()
{
    timeSliceCounter = 0;
    TCB *old = running;
    if (!old->isFinished() && !old->status) {
        Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}
