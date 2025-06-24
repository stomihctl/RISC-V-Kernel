#include "../h/print.hpp"
#include "../h/syscall_c.h"

void mprintString(char const *string)
{
    while (*string != '\0')
    {
        putc(*string);
        string++;
    }
}

void printInteger(uint64 xx)
{
    char digits[] = "0123456789ABCDEF";
    int base = 10;
    int sgn = 0;
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    do{
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
        putc(buf[i]);

}

/*
char* getStr(char *buf, int max) {
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
        cc = getc();
        if(cc < 1)
            break;
        c = cc;
        buf[i++] = c;
        if(c == '\n' || c == '\r')
            break;
    }
    buf[i] = '\0';

    return buf;
}

int strToInt(const char *s) {
    int n;

    n = 0;
    while ('0' <= *s && *s <= '9')
        n = n * 10 + *s++ - '0';
    return n;
}

*/