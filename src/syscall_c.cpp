#include "../h/syscall_c.h"

#include "../h/print.hpp"

void* mem_alloc(size_t size)
{
    uint64 code = 0x01;
    void* ret = nullptr;
    size_t sizeBlocks = size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE * (size / MEM_BLOCK_SIZE + 1) : size;
    uint64 newSize = (uint64)sizeBlocks;
    __asm__ volatile("mv a1, %0" : : "r" (newSize));
    __asm__ volatile("mv a0, %0" : : "r" (code));


    //poziv za prelaz u sistemski rezim zbog obrade
    __asm__ volatile("ecall");
    //upis povratne vrednosti koja se cuva u a0 registru
    uint64 rret;
    __asm__ volatile("mv %[rt], a0" : [rt] "=r" (rret));
    ret = (void*)rret;
    return ret;
}

int mem_free(void* p)
{
    uint64 ret = -2;
    uint64 ptr = (uint64)p;
    uint64 code = 0x02;
    __asm__ volatile("mv a1, %0" : : "r" (ptr));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg)
{
    uint64 code = 0x11;
    uint64 ret;
    __asm__ volatile("mv a3, %0" : : "r"(arg));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

void thread_dispatch ()
{
    uint64 code = 0x13;
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
}

int thread_exit()
{
    uint64 ret = -2;
    uint64 code = 0x12;
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int sem_open(sem_t* handle, unsigned init)
{
    uint64 ret = -3;
    uint64 code = 0x21;

    __asm__ volatile("mv a2, %0" : : "r" (init));
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));

    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;

}
int sem_close(sem_t handle)
{
    uint64 ret = -3;
    uint64 code = 0x22;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}
int sem_wait(sem_t id)
{
    uint64 ret = -3;
    uint64 code = 0x23;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}
int sem_signal(sem_t id)
{
    uint64 ret = -3;
    uint64 code = 0x24;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}
int sem_timedwait(sem_t id, time_t timeout)
{
    uint64 ret = -3;
    uint64 code = 0x25;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)timeout));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}
int sem_trywait(sem_t id)
{
    uint64 ret = -3;
    uint64 code = 0x26;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int time_sleep (time_t time)
{
    uint64 ret = -3;
    uint64 code = 0x31;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)time));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

char getc()
{
    uint64 code = 0x41;
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (char)ret;
}
void putc(char c)
{
    uint64 code = 0x42;
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)c));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
}