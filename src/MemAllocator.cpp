#include "../h/MemAllocator.hpp"

#include "../lib/console.h"

MemAllocator::FreeBlocks *MemAllocator::headPtr = nullptr;

void MemAllocator::initialize(){
    headPtr = (FreeBlocks*) (char *)HEAP_START_ADDR;
    headPtr->size =  (char*)HEAP_START_ADDR - (char*)HEAP_START_ADDR - sizeof(FreeBlocks);
    headPtr->next = nullptr;
}

void* MemAllocator::mem_alloc (size_t size){
    FreeBlocks* prev = nullptr;
    FreeBlocks* curr = nullptr;
    for(curr = headPtr; curr != nullptr; prev = curr, curr = curr->next){
        if(curr->size > size){
            break;
        }
    }
    if(!curr){
        return nullptr;
    }
    if(curr->size - size <= sizeof(FreeBlocks)){//ako uzimamo ceo blok
        if(!prev){//ako je prvi u listi
            headPtr = curr->next;
            curr->next = nullptr;
        }
        else//ako je negde u sredini ili na kraju liste
        {
            prev->next = curr->next;
            curr->next = nullptr;
        }
        return reinterpret_cast<char*>(curr) + sizeof(FreeBlocks);
    }
    //moramo da secemo blok na 2 dela
    else
    {
        //pravimo novi slobodni blok i ulancavamo ga a stari returnujemo
        FreeBlocks* newblk = reinterpret_cast<FreeBlocks*>(reinterpret_cast<char*>(curr) + size + sizeof(FreeBlocks));
        newblk->size = curr->size - size - sizeof(FreeBlocks);
        curr->size = size;
        if(!prev)//prvi u listi
        {
            headPtr = newblk;
            newblk->next = curr->next;
            curr->next = nullptr;
        }
        else
        {
            prev->next = newblk;
            newblk->next = curr->next;
            curr->next = nullptr;
        }
        return reinterpret_cast<char*>(curr) + sizeof(FreeBlocks);
    }
}

int MemAllocator::mem_free(void* ptr) {
    FreeBlocks* insrt = (FreeBlocks*)((char*)ptr - sizeof(FreeBlocks));

    if((char*)insrt < (char*)HEAP_START_ADDR)
    {
        return -1;
    }
    if(!headPtr || (char*)insrt < (char*)headPtr)
    { //ako insrt treba da dodje na pocetku
        if(headPtr) //ako postoji lista
        {
            insrt->next = headPtr;
            //ne treba azurirati size jer on je azuriran pri alokaciji
        }
        headPtr = insrt;
        joinNextPrev(insrt, insrt->next);
    }
    else
    { //ako insrt je u sredini ili na kraju liste
        FreeBlocks* prev = nullptr;
        FreeBlocks* next = nullptr;
        for(next = headPtr; next != nullptr; prev = next, next = next->next)
        {
            if((char*)next > (char*)insrt)
            {
                break;
            }
        }
        prev->next = insrt;
        insrt->next = next;
        int r = joinNextPrev(prev, insrt);
        if(r == 1)
        {
            insrt = prev;
        }
        joinNextPrev(insrt, next);
    }

    return 1;
}

int MemAllocator::joinNextPrev(FreeBlocks* blkPrev, FreeBlocks* blkNext)
{
    if(!blkPrev || !blkNext)
    {
        return -1;
    }
    if(((char*)blkPrev + blkPrev->size + sizeof(FreeBlocks)) == (char*)blkNext)
    {
        blkPrev->size += blkNext->size;
        blkPrev->size += sizeof(FreeBlocks);
        blkPrev->next = blkNext->next;
        return 0;
    }
    return -1;
}