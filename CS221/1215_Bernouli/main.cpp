#include <stdio.h>

using namespace std;


/************
STL linkQueue
************/
template <class elemType>
class linkQueue
{
    friend class Bernouli;
private:
    struct node {
        elemType  data;
        node *next;
        node(const elemType &x, node *N = NULL){ data = x; next = N;}
        node():next(NULL) {}
        ~node() {}
	};
	node *front, *rear;
public:
    linkQueue();
    ~linkQueue();
    bool isEmpty() const;
    void enQueue(const elemType &x);
    elemType deQueue();
    elemType getHead() const;
};

template <class elemType>
linkQueue<elemType>::linkQueue()
{
   front = rear = NULL;
}

template <class elemType>
void linkQueue<elemType>::enQueue(const elemType &x)
{
    if (rear == NULL) front = rear = new node(x);
    else rear = rear->next = new node(x);
}

template <class elemType>
elemType linkQueue<elemType>::deQueue()
{
    node *tmp = front;
    elemType value = front->data;
    front = front->next;
    if (front == NULL) rear = NULL;
    delete tmp;
    return value;
}

template <class elemType>
bool linkQueue<elemType>::isEmpty() const
{
     return front == NULL;
}

template <class elemType>
elemType linkQueue<elemType>::getHead() const
{
     return front->data;
}

template <class elemType>
linkQueue<elemType>::~linkQueue()
{
    node *tmp;
    while (front != NULL) {
        tmp = front;
        front = front->next;
        delete tmp;
    }
}



class Bernouli: public linkQueue<int>
{
public:
    Bernouli(){};
    ~Bernouli(){};
    void insert(const int x);
};

void Bernouli::insert(const int x)
{
    if (isEmpty()) enQueue(x);
    else
    {
        node* q = front;
        if (front->data>=x) front = new node(x,front);
        else if (rear->data<x) enQueue(x);
        else while (q->next!=NULL)
        {
            if (q->next->data>=x) {q->next = new node(x,q->next); break;}
            q = q->next;
        }
    }
}



int main()
{
    int times;
    char command[10];
    int parameter;
    scanf("%d",&times);
    Bernouli a;

    for (int i=0;i<times;++i)
    {
        scanf("%s",command);
        if (command[0]=='i'&&command[1]=='n'&&command[2]=='s'&&command[3]=='e'&&command[4]=='r'&&command[5]=='t')
        {
            scanf("%d",&parameter);
            a.insert(parameter);
        }
        if (command[0]=='d'&&command[1]=='e'&&command[2]=='l')
        {
            a.deQueue();
        }
        if (command[0]=='m'&&command[1]=='i'&&command[2]=='n')
        {
            printf("%d%s",a.getHead(),"\n");
        }
    }
    return 0;
}
