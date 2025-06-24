#include "../h/bufer.hpp"

Bufer::Bufer(int size) : size(size){

    buff = (int *)mem_alloc(sizeof(int) * size);
    semItem = Semaphore::initSem(0);
    semSpace = Semaphore::initSem(size);
}

Bufer::~Bufer() {

    while (getCnt() > 0) {
        char ch = buff[head];
        putc(ch);
        head = (head + 1) % size;
    }

    mem_free(buff);
    semSpace->close();
    semItem->close();
}

void Bufer::putCh(int i) {

    semSpace->mwait();

    buff[tail] = i;

    tail = (tail + 1) % size;

    semItem->msignal();
}

int Bufer::getCh() {

    semItem->mwait();

    int ret = buff[head];

    head = (head + 1) % size;

    semSpace->msignal();

    return ret;
}

int Bufer::getCnt() {

    int ret;

    if (tail >= head) {
        ret = tail - head;
    }
    else {
        ret = size - head + tail;
    }

    return ret;
}
