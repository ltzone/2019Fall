#ifndef STD_H_INCLUDED
#define STD_H_INCLUDED

template <class elemType>
class seqQueue
{
private:
    elemType *elem;
    int maxSize;
    int front,rear;
    void doubleSpace();
public:
    seqQueue(int size=10);
    ~seqQueue();
    bool isEmpty() const { return front == rear;}
    void enQueue(const elemType &x);
    elemType deQueue();
    elemType getHead() const;
};

template <class elemType>
void seqQueue<elemType>::doubleSpace()
{
    elemType *tmp = elem;
    elem = new elemType[2*maxSize];
    for (int i=1;i<=maxSize;++i)
        elem[i]=tmp[front+i];
    front = 0;
    rear = maxSize;
    maxSize*=2;
    delete [] tmp;
}

template <class elemType>
seqQueue<elemType>::seqQueue(int size)
{
    elem = new elemType[size];
    maxSize = size;
    front = rear = 0;
}

template <class elemType>
seqQueue<elemType>::~seqQueue()
{
    delete [] elem;
}

template <class elemType>
void seqQueue<elemType>::enQueue(const elemType &x)
{
    if ((rear+1)%maxSize == front) doubleSpace();
    rear = (rear+1)%maxSize;
    elem[rear] = x;
}

template <class elemType>
elemType seqQueue<elemType>::deQueue()
{
    front  = (front + 1)%maxSize;
    return elem[front];
}

template <class elemType>
elemType seqQueue<elemType>::getHead() const
{
    return elem[(front+1)%maxSize];
}




/************
STL stack
************/
template <class elemType>
class linkStack
{
private:
    struct node {
          elemType  data;
      node *next;
      node(const elemType &x, node *N = NULL)
          {data = x; next = N;}
      node():next(NULL) {}
      ~node() {}
    };
    node *top_p;
public:
    linkStack();
    ~linkStack();
    bool isEmpty() const;
    void push(const elemType &x);
    elemType pop();
    elemType top() const;
};

template <class elemType>
linkStack<elemType>::linkStack()
{
    top_p = NULL;
}

template <class elemType>
linkStack<elemType>::~linkStack()
{
    node *tmp;
    while (top_p != NULL) {
        tmp = top_p;
        top_p = top_p ->next;
        delete tmp;
	}
}

template <class elemType>
void linkStack<elemType>::push(const elemType &x)
{
    top_p = new node(x, top_p);
}

template <class elemType>
elemType linkStack<elemType>::pop()
{
    node *tmp = top_p;
    elemType x = tmp->data;
    top_p = top_p ->next;
    delete tmp;
    return x;
}

template <class elemType>
elemType linkStack<elemType>::top() const
{
    return top_p ->data;
}

template <class elemType>
bool linkStack<elemType>::isEmpty() const
{
    return top_p == NULL;
}



#endif // STD_H_INCLUDED
