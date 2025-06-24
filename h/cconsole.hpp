#ifndef CCONSOLE_HPP
#define CCONSOLE_HPP

#include "../h/bufer.hpp"

class Cconsole
{
public:

    static void init_consl();

    //putc
    static void putChIn(char c);
    static void putChOut(char c);
    static char getChIn();
    //getc
    static char getChOut();

private :
    static Bufer* bIn;
    static Bufer* bOut;
};

#endif