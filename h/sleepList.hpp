#ifndef SLEEPLIST_HPP
#define SLEEPLIST_HPP

#include "tcb.hpp"
#include "../h/scheduler.hpp"
#include "../lib/hw.h"

class sleepList
{
private:
    struct Elem
    {
        TCB *data;
        time_t time;
        Elem *next;

        Elem(TCB *data, time_t time, Elem *next = nullptr) : data(data), time(time), next(next) {}
    };

    static Elem *head, *tail;

public:

    static void add(TCB *data, time_t time);

    static void clock();

    static void cleanFinished();

    static TCB *removeFirst();

    static time_t peekFirstTime();

    static TCB *removeLast();

    static time_t peekLastTime();
};

#endif