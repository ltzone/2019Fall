/*************************************************
Copyright:SJTU
Author: Litao Zhou
Date:2019-10-01
Description:SJTUOJ 1203 LinkUnion
**************************************************/
#include <iostream>
using namespace std;

template <class elemType> class LinkList;
template <class elemType>
LinkList<elemType> operator+ (const LinkList<elemType> &a, const LinkList<elemType> &b);



/**********
LinkList class is a template linklist
basic functions:
- write(len) takes in a line of elements totalling the number of len
- print() output the linklist
- clear() destruct the linklist
- operator+ takes in 2 linklists and join them together
**********/
/* Class Declaration */
template <class elemType>
class LinkList
{
    friend LinkList<elemType> operator+<> (const LinkList<elemType> &a, const LinkList<elemType> &b);
private:
    class node
    {
    public:
        elemType data;
        node *next;
        node(elemType x, node* y=NULL):data(x),next(y){};
        node():next(NULL){};
    };
    node *head;
    int len;
    node *insert_at(elemType x, node* ptr)
    {
        ptr->next = new node(x,ptr->next);
        ++len;
        return ptr->next;
    }
public:
    LinkList() {head = new node; len = 0;}
    ~LinkList() {clear(); delete head;}
    void clear();
    void write(int count);
    void print();
};

/* Function Definition */
template <class elemType>
LinkList<elemType> operator+ (const LinkList<elemType> &a, const LinkList<elemType> &b)
{
    LinkList<elemType> res;
    typename LinkList<elemType>::node *pa = a.head->next, *pb = b.head->next, *p = res.head;
    while (pa!=NULL)
    {
        p = res.insert_at(pa->data,p);
        pa = pa->next;
    }
    while (pb!=NULL)
    {
        p = res.insert_at(pb->data,p);
        pb = pb->next;
    }
    p->next = NULL;
    res.len = a.len+b.len;
    return res;
}

template <class elemType>
void LinkList<elemType>::clear()
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
template <class elemType>
void LinkList<elemType>::write(int count)
{
    clear();
    elemType a;
    node *p = head;
    for (int i=0; i<count; ++i)
    {
        cin>>a;
        p = insert_at(a,p);
    }
}

template <class elemType>
void LinkList<elemType>::print()
{
    node *p = head->next;
    for (int i=0; i<len; ++i)
    {
        cout << p->data << ' ';
        p = p->next;
    }
}
/* End of BigInt Class */

/************
The main() function is divided to 3 branches. Alternatively designed for int, char, double linklists.
************/
int main()
{
    char typ[7];
    cin >> typ;
    switch (typ[0])
    {
        case 'i': if (typ[1]=='n'&&typ[2]=='t')
        {
            LinkList<int> a,b;
            int alen,blen;
            cin >> alen >> blen;
            a.write(alen);
            b.write(blen);
            (a+b).print();break;
        }
        case 'c': if (typ[1]=='h'&&typ[2]=='a'&&typ[3]=='r')
        {
            LinkList<char> a,b;
            int alen,blen;
            cin >> alen >> blen;
            a.write(alen);
            b.write(blen);
            (a+b).print();break;
        }
        case 'd': if (typ[1]=='o'&&typ[2]=='u'&&typ[3]=='b'&&typ[4]=='l'&&typ[5]=='e')
        {
            LinkList<double> a,b;
            int alen,blen;
            cin >> alen >> blen;
            a.write(alen);
            b.write(blen);
            (a+b).print();break;
        }
    }

    return 0;
}
