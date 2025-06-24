#include "../h/semaphore.hpp"

#include "../h/sleepList.hpp"

Semaphore* Semaphore::initSem(int val)
{
    return new Semaphore(val);
}

int Semaphore::close()
{
    if(closed)
    {
        return -1;
    }
    closed = true;

    while(blocked.peekFirst())
    {
        TCB* tmp = blocked.removeFirst();
        tmp->setStatus(0);
        Scheduler::put(tmp);
    }
    return 0;
}

int Semaphore::mwait()
{
    //lock
    if(closed)
    {
        return -1;
    }
    if(--value < 0)
    {
        blocked.addLast(TCB::running);
        int status = TCB::running->readStatus();
        status = status | 1;

        TCB::running->setStatus(status);
        thread_dispatch();
        if(closed)
        {
            return -2;
        }
    }
    //unlock
    return 0;
}

int Semaphore::msignal()
{
    if(closed)
    {
        return -1;
    }
    if(++value <= 0)
    {
        TCB* tmp = blocked.removeFirst();
        if(tmp)
        {
            int status = tmp->readStatus();
            status = status & 1;
            if(status)
            {
                tmp->setStatus(0);
                Scheduler::put(tmp);
                return 0;
            }
        }
    }
    return -2;
}

int Semaphore::sem_timedwait(time_t timeout)
{
    if(closed)
    {
        return -1;
    }
    if(--value < 0)
    {
        if(TCB::running->readStatus() == 2 || TCB::running->readStatus() == 3)
        {
            return -1;
        }
        blocked.addLast(TCB::running);
        //i blokiran i spava
        TCB::running->setStatus(3);
        sleepList::add(TCB::running, timeout);
        thread_dispatch();

        if(closed)
        {
            return -2;
        }
        //if(TCB::running->readStatus() == 3 || TCB::running->readStatus() == 1)
        if(TCB::running->readStatus() != 0)
        {
            return -3;
        }
    }
    return 0;
}
int Semaphore::sem_trywait()
{
    if(closed)
    {
        return -1;
    }
    if(value > 0)
    {
        value--;
        return 1;
    }
    return 0;
}

