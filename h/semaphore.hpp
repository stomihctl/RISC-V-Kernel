//sem.hpp
#ifndef SEMAPHORE_HPP
#define SEMAPHORE_HPP
#include "list.hpp"
#include "tcb.hpp"

//273
class Semaphore
{
public:

    static Semaphore* initSem(int val);

    int close();
    int mwait();
    int msignal();
    int sem_timedwait(time_t timeout);
    int sem_trywait();

    int retValue () const
    {
        return value;
    }

    bool retClosed()
    {
        return closed;
    }

private:
    Semaphore(int val = 1) : value(val) {}
    int value;
    List<TCB> blocked;
    bool closed = false;
};

#endif