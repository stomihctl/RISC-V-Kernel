#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "syscall_c.h"
class TCB
{
public:

    void setStatus(int s) { status = s; }
    //s = 01 (1)blocked
    //s = 10 (2)sleeping
    //s = 11 (3)blocked i sleeping
    int readStatus(){ return status; }

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)(void*);

    static TCB *createThread(Body body,void* arg,uint64* st = nullptr);

    static void yield();

    static TCB *running;


private:
    TCB(Body body, uint64 timeSlice,void* arg, uint64* st) :
            body(body),
            stack(body != nullptr ? st : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false),
            arg(arg)
    {
        if (body != nullptr) { Scheduler::put((TCB*)this); }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;////broj perioda koje dobija nit svaki put kad joj bude dodeljen procesor
    bool finished;
    void* arg;
    int status = 0; // 1 - za blocked 2 - za sleep

    friend class Riscv;

    //za sleeplist
    friend class ThreadSleep;
    friend class Sem;

    //metoda koja ce se prva izvrsavati za svaku novokreiranu nit
    //i ona ce pozivati body
    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();


    static uint64 timeSliceCounter;//brojac vrem odrezaka koji su protekli do sada za trenutno izvrsavanu nit

    //za sleeplistu
    static List<TCB> sleepingThreadQueue;

    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
    static uint64 constexpr TIME_SLICE = DEFAULT_TIME_SLICE;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
