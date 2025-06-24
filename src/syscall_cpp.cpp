#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"

Thread::Thread (void (*body)(void*), void* arg)
{
    this->body = body;
    this->arg = arg;
}

Thread::Thread():Thread(nullptr, nullptr)
{
    //Thread(nullptr, nullptr);
    //ovde upisuje nesto u body i program staje
}


void Thread::dispatch()
{
    thread_dispatch();
}

Thread::~Thread()
{
    delete (TCB*)myHandle;
}

int Thread::start()
{
    if(body == nullptr)
    {
        return thread_create(&myHandle, &runWrapper, this);
    }
    return thread_create(&myHandle, body, arg);
}

int Thread::sleep(time_t t)
{
    return time_sleep(t);
}

Semaphore::Semaphore(unsigned init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
{
    sem_close(myHandle);
}

int Semaphore::wait()
{
    return  sem_wait(myHandle);
}

int Semaphore::signal()
{
    return sem_signal(myHandle);
}

int Semaphore::tryWait()
{
    return sem_trywait(myHandle);
}

int Semaphore::timedWait(time_t t)
{
    return sem_timedwait(myHandle, t);
}

PeriodicThread::PeriodicThread (time_t period)
{
    this->period = period;
}

char Console::getc ()
{
    return ::getc();
}
void Console::putc (char c)
{
    ::putc(c);
}