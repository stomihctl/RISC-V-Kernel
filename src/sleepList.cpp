#include "../h/sleepList.hpp"

sleepList::Elem* sleepList::head = nullptr;
sleepList::Elem* sleepList::tail = nullptr;

void sleepList::add(TCB *data, time_t time)
{

    Elem* tmp = new Elem(data, time);
    if(!head)
    {
        head = tmp;
        tail = tmp;
        //novo
        head->next = nullptr;
        return;
    }
    Elem* prev = nullptr;
    Elem* curr = head;
    for(;curr != nullptr ;prev = curr, curr = curr->next)
    {
        if(curr->time > tmp->time)
        {
            if(prev != nullptr)
            {
                prev->next = tmp;
                tmp->next = curr;
                curr->time -= tmp->time;
            }
            else
            {
                tmp->next = head;
                head->time -= tmp->time;
                head = tmp;
            }
            return;
        }
        tmp->time -= curr->time;
    }
    tail->next = tmp;
    tail = tmp;
    //novo
    tail->next = nullptr;
}

void sleepList::clock()
{
    if(head)
    {
        head->time--;
    }
}

void sleepList::cleanFinished()
{
    while(true)
    {
        if(head == nullptr || head->time != 0)
        {
            break;
        }
        TCB* tmp = removeFirst();
        tmp->setStatus(0);
        Scheduler::put(tmp);
    }
}

TCB * sleepList::removeFirst()
{
    if (!head) { return nullptr; }

    Elem *elem = head;
    head = head->next;
    if (!head) { tail = nullptr; }

    TCB *ret = elem->data;
    delete elem;
    return ret;
}

time_t sleepList::peekFirstTime()
{
    if (!head) { return 0; }
    return head->time;
}

TCB * sleepList::removeLast()
{
    if (!head) { return 0; }

    Elem *prev = 0;
    for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    {
        prev = curr;
    }

    Elem *elem = tail;
    if (prev) { prev->next = 0; }
    else { head = 0; }
    tail = prev;

    TCB *ret = elem->data;
    delete elem;
    return ret;
}

time_t sleepList::peekLastTime()
{
    if (!tail) { return 0; }
    return tail->time;
}