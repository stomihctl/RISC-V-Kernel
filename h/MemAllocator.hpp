#ifndef MEMALLOCATOR_HPP
#define MEMALLOCATOR_HPP
#include "../lib/hw.h"

class MemAllocator{

public:

    static void initialize();
    static void* mem_alloc (size_t size);
    static int mem_free(void*);
private:
    struct FreeBlocks{
        uint64 size;//VELICINA NE RACUNAJUCI VELICINU sizeof(FreeBlocks)
        FreeBlocks* next;
    };

    static FreeBlocks* headPtr;
    static int joinNextPrev(FreeBlocks* blk1, FreeBlocks* blk2);
};

#endif