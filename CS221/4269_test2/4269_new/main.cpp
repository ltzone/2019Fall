/*************************************************
Copyright:SJTU
Author: Litao Zhou
Date:2019-10-01
Description:SJTUOJ 1202 BigInt
**************************************************/

#include <iostream>

using namespace std;



template <class elemType>
class seqStack
 { private:
        elemType *elem;
	  int top_p;
	  int maxSize;
	  void doubleSpace();
public:
     seqStack(int initSize = 10) ;
     ~seqStack();
      bool isEmpty() const;
      void push(const elemType &x) ;
      elemType  pop();
      elemType  top() const;
};
template <class elemType>
seqStack<elemType>::seqStack(int initSize) {
	    elem = new elemType[initSize];
	     maxSize = initSize ;    top_p = -1;
}

template <class elemType>
seqStack<elemType>:: ~seqStack()
  {     delete [] elem;     }

 template <class elemType>
bool seqStack<elemType>:: isEmpty() const
  {    return top_p == -1;    }
template <class elemType>
void seqStack<elemType>::push(const elemType &x)
{       if (top_p == maxSize - 1)   doubleSpace();
        elem[++top_p] = x;
}

template <class elemType>
elemType seqStack<elemType>::pop()
 {     return elem[top_p--];  }

template <class elemType>
elemType seqStack<elemType>::top() const
 {     return elem[top_p];  }
template <class elemType>
void seqStack<elemType>::doubleSpace(){
	elemType *tmp = elem;

	elem = new elemType[2 * maxSize];
	for (int i = 0; i < maxSize; ++i)
		elem[i] = tmp[i];
	maxSize *= 2;
	delete [] tmp;
}




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
    BigInt(const BigInt &A)
    {
        head = new node(0,NULL);
        len = A.len;
        node* q =A.head->next;
        node* pb = head;
        while (q!=NULL)
        {
            pb = insert_at(pb,q->num);
            q = q->next;
        }
    }

    ~BigInt(){clear();delete head;}
    void clear();
    void write();
    void print();
    void add (const BigInt& A, const BigInt& B);
    void reverse();

    bool isreverse()
    {
        seqStack<char> a;
        node* q =head->next;
        while (q!=NULL)
        {
            a.push(q->num);
            q = q->next;
        }
        q =head->next;
        while (q!=NULL)
        {
            if(q->num !=a.pop()) return false;
            q = q->next;
        }
        return true;
    }

    void get_reverse(BigInt & res)
    {
        node* q =head->next;
        while (q!=NULL)
        {
            res.insert_at(res.head,q->num);
            q = q->next;
        }
    }

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
    int b,t;
    cin >> b;
    while (b!=0)
    {
        t = b%10;
        b /= 10;
        insert_at(head,'0'+t);
    }
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
/* End of BigInt Class */

/************
The following main() function gives an example of BigInt class
************/
int main()
{
    BigInt a;
    a.write();
    BigInt b = a;
    int loc = 0;

    while (true)
    {
        if (b.isreverse()) break;
        ++loc;
        BigInt tmp,tmp2;
        b.get_reverse(tmp);
        tmp.get_reverse(tmp2);
        b.add(tmp,tmp2);
    }

    cout << loc << endl;
    int i;
    a.print();
    cout << "--->";
    for (i=0;i<loc-1;++i)
    {
        if (a.isreverse()) break;
        BigInt tmp,tmp2;
        a.get_reverse(tmp);
        tmp.get_reverse(tmp2);
        a.add(tmp,tmp2);
        a.print();
        cout << "--->";
    }
        BigInt tmp,tmp2;
        a.get_reverse(tmp);
        tmp.get_reverse(tmp2);
        a.add(tmp,tmp2);
    a.print();

    return 0;




}
