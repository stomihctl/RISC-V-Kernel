//
// Created by marko on 20.4.22..
//

#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../h/print.hpp"

void mworkerBodyA(void* arg)
{
    for (uint64 i = 0; i < 10; i++)
    {
        mprintString("A: i=");
        printInteger(i);
        mprintString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                // busy wait
            }
//            TCB::yield();
        }
    }
    mprintString("\n");
    int r = thread_exit();
    printInteger(r);
    mprintString(" Povratna iz thread_exit A\n");
}

void mworkerBodyB(void* arg)
{
    for (uint64 i = 0; i < 16; i++)
    {
        mprintString("B: i=");
        printInteger(i);
        mprintString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                // busy wait
            }
//            TCB::yield();
        }
    }
    mprintString("\n");
    int r = thread_exit();
    printInteger(r);
    mprintString(" Povratna iz thread_exit B\n");
}

static uint64 fibonacci(uint64 n)
{
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { TCB::yield(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void mworkerBodyC(void* arg)
{
    uint8 i = 0;
    for (; i < 3; i++)
    {
        mprintString("C: i=");
        printInteger(i);
        mprintString("\n");
    }

    mprintString("C: yield\n");
    __asm__ ("li t1, 7");
    TCB::yield();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    mprintString("C: t1=");
    printInteger(t1);
    mprintString("\n");

    uint64 result = fibonacci(12);
    mprintString("C: fibonaci=");
    printInteger(result);
    mprintString("\n");

    for (; i < 6; i++)
    {
        mprintString("C: i=");
        printInteger(i);
        mprintString("\n");
    }
    mprintString("\n");
    int r = thread_exit();
    printInteger(r);
    mprintString(" Povratna iz thread_exit C\n");
//    TCB::yield();
}

void mworkerBodyD(void* arg)
{
    uint8 i = 10;
    for (; i < 13; i++)
    {
        mprintString("D: i=");
        printInteger(i);
        mprintString("\n");
    }

    mprintString("D: yield\n");
    __asm__ ("li t1, 5");
    TCB::yield();

    uint64 result = fibonacci(16);
    mprintString("D: fibonaci=");
    printInteger(result);
    mprintString("\n");

    for (; i < 16; i++)
    {
        mprintString("D: i=");
        printInteger(i);
        mprintString("\n");
    }
    mprintString("\n");
    int r = thread_exit();
    printInteger(r);
    mprintString(" Povratna iz thread_exit D\n");
//    TCB::yield();
}