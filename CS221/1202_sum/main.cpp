#include <iostream>

using namespace std;

class BigInt
{
private:
    struct node
    {
        char num;
        node *next;
        node (const char &x=0, node *n = NULL):num(x),next(n){};
    };
    node *head;
    int len;
    node *insert_at (node *ptr, const char data)
    {
        ptr->next = new node(data,ptr->next);
        ++len;
        return (ptr->next);
    }
public:
    BigInt(){head = new node();len = 0;}
    ~BigInt(){clear();delete head;}
    void clear();
    void write();
    void print();
    BigInt add (const BigInt& A, const BigInt& B);
    void reverse();
};

void BigInt::clear()
{
    node *p = head->next, *q;
    head->next = NULL;
    while (p!=NULL)
    {
        q = p->next;
        delete p;
        p = q;
    }
}

void BigInt::write()
{
    char a;
    while ((a = cin.get())!='\n') insert_at(head,a);
    cin.clear();
}

void BigInt::print()
{
    this->reverse();
    node* a = head->next;
    while (a!=NULL)
    {
        cout << a->num;
        a = a->next;
    }
    this->reverse();
}

void BigInt::reverse()
{
    if (len == 0) return;
    node *prev=NULL,*now=head->next,*q;
    while (now!=NULL)
    {
        q = now->next;
        now -> next = prev;
        prev = now;
        now = q;
    }
    head->next = prev;
}




int main()
{
    BigInt a;
    a.write();
    a.print();
    a.print();
    return 0;
}
