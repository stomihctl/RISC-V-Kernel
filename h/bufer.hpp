#ifndef BUFFER_HPP
#define BUFFER_HPP

#include "../h/semaphore.hpp"

class Bufer {
public:
    Bufer(int size);

    ~Bufer();

    void putCh(int val);

    int getCh();

    int getCnt();

private:

    int *buff;
    int head = 0;
    int tail = 0;
    int size = 0;

    Semaphore* semSpace;
    Semaphore* semItem;
};

#endif