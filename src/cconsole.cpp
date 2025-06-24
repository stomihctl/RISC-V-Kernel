#include "../h/cconsole.hpp"

Bufer* Cconsole::bIn = nullptr;
Bufer* Cconsole::bOut = nullptr;

void Cconsole::init_consl()
{
    bIn = new Bufer(256);//bGet
    bOut = new Bufer(256);//bPut
}

void Cconsole::putChIn(char c)
{
    bIn->putCh(c);
}
void Cconsole::putChOut(char c)
{
    bOut->putCh(c);
}
char Cconsole::getChIn()
{
    return bIn->getCh();
}
char Cconsole::getChOut()
{
    return bOut->getCh();
}