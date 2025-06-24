#ifndef SYSCALL_CPP_HPP
#define SYSCALL_CPP_HPP

#include "syscall_c.h"

void* operator new (size_t n);
void *operator new[](size_t n);
void operator delete[](void *p);
void operator delete (void* p);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle = nullptr;
    void (*body)(void*); void* arg;

    static void runWrapper(void* t)
    {
        if(t)
        {
            ((Thread*)t)->run();
        }
    }
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
    int timedWait (time_t);
    int tryWait();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    void run() override
    {
        while (true)
        {
            periodicActivation();
            time_sleep(period);
        }
    }
private:
    time_t period;
};


class Console {
public:
    static char getc ();
    static void putc (char);
};


#endif