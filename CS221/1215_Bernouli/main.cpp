#include <iostream>

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



class Bernouli: protected linkQueue<int>
{
private:
    node prefront;
    node *minprev;
public:
    Bernouli():prefront(0,front),minprev(&prefront){};
    ~Bernouli(){};
    void insert(const int x);
    int del();
    int getmin() const {return minprev->next->data;} // getmin has to be operated on non-empty queue
};

void Bernouli::insert(const int x)
{
    if (isEmpty())
    {
        enQueue(x);
        prefront.next = front;
        minprev = &prefront;
    }
    else if (minprev->next->data > x)
    {
        minprev = rear;
        enQueue(x);
    }
    else enQueue(x);
}

int Bernouli::del()
{
    node* q = minprev->next;
    minprev->next = q->next;
    int res = q->data;
    delete q;

    node* p = &prefront;
    minprev = p;
    while (p->next!=NULL)
    {
        if (p->next->data < minprev->next->data) minprev = p;
        p = p->next;
    }
    return res;
}


int main()
{
    int times;
    char command[10];
    int parameter;
    cin >> times;
    Bernouli a;

    for (int i=0;i<times;++i)
    {
        cin >> command;
        if (command[0]=='i'&&command[1]=='n'&&command[2]=='s'&&command[3]=='e'&&command[4]=='r'&&command[5]=='t')
        {
            cin >> parameter;
            a.insert(parameter);
        }
        if (command[0]=='d'&&command[1]=='e'&&command[2]=='l')
        {
            a.del();
        }
        if (command[0]=='m'&&command[1]=='i'&&command[2]=='n')
        {
            cout << a.getmin() << "\n";
        }
    }
    return 0;
}
