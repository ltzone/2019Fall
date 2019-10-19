/*************************************************
Copyright:SJTU
Author: Litao Zhou
Date:2019-10-01
Description:SJTUOJ 1202 BigInt
**************************************************/

#include <iostream>

using namespace std;

class BigInt;
bool Bigint_compare(const BigInt& A, const BigInt& B);
/**********
BigInt class is a linklist of numbers (which are stored in terms of char type)
The numbers in the list are stored in reversed order for the sake of add operation
The Time complexity of the program is O(n)
basic functions:
- write() takes in a line of numbers ending with '\n' and store them in the BigInt
- print() output the linklist in reversed order to show the number
- clear() destruct the linklist
- add() takes in 2 BigInts, and make the current BigInt be their result
- reverse() is an auxiliary function to reverse the linklist in O(n) time
**********/
/* Class Declaration */
class BigInt
{
    friend bool Bigint_compare(const BigInt& A, const BigInt& B);
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
    BigInt(){head = new node(0,NULL);len = 0;}
    ~BigInt(){clear();delete head;}
    void clear();
    void write();
    void print();
    void add (const BigInt& A, const BigInt& B);
    void reverse();
    BigInt get_reverse();
};

/* Function Definition */
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
    len = 0;
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

BigInt BigInt::get_reverse()
{
    reverse();
    BigInt b;
    node* p = head;
    node* pb = b.head;
    while (p->next != NULL)
    {
        p = p->next;
        pb = b.insert_at(pb,p->num);
    }
    pb= NULL;
    reverse();
    return b;
}


void BigInt::add(const BigInt& A, const BigInt& B)
{
    clear();
    if (A.len < B.len) return add(B,A);
    node *pa=A.head->next,*pb=B.head->next;
    bool carry = false;
    node *pr=head;
    char q;
    while (pb!=NULL)
    {
        q = pa->num + pb->num - '0' + carry;
        if (q > '9') { carry = true; q-=10;}
        else carry = false;
        pr = insert_at(pr,q);
        pa = pa->next;
        pb = pb->next;
    }
    while (pa!=NULL)
    {
        q = pa->num + carry;
        if (q > '9') { carry = true; q-=10;}
        else carry = false;
        pr = insert_at(pr,q);
        pa = pa->next;
    }
    if (carry) pr = insert_at(pr,'1');
    return;
}


bool Bigint_compare(const BigInt& A, const BigInt& B)
{
    BigInt::node *pa=A.head->next,*pb=B.head->next;
    bool flag = true;
    while (pb!=NULL)
    {
        if (pa->num != pb->num) return false;
        pa = pa->next;
        pb = pb->next;
    }
    return flag;
}

/* End of BigInt Class */

/************
The following main() function gives an example of BigInt class
************/
int main()
{
    BigInt a;
    a.write();

    BigInt* route[100] = {&a};
    int loc=0;
    BigInt* ptr = &a;

    a.get_reverse().print();

    while (true)
    {
        bool t = Bigint_compare(*ptr,ptr->get_reverse());
        if (t) break;
        ptr = new BigInt();
        ptr->add(a,a.get_reverse());
        route[++loc] = ptr;
    }

    cout << loc-1 << endl;
    int i;
    for (i=0;i<loc-1;++i)
    {
        route[i]->print();
        cout << "--->";
    }
    route[i]->print();

    for (int i=1;i<=loc;++i)
        delete route[i];


    return 0;
}
