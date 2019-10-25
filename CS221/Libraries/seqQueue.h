#ifndef SEQQUEUE_H_INCLUDED
#define SEQQUEUE_H_INCLUDED

/************
STL seqQueue
 elem   front                 rear
 [  ] [] [ ] [0] [1] [2] ... [ n ] []
isEmpty() front==rear
isFull() front == (rear+1)%maxSize
  (in fact at most maxSize-1 elements)
deQueue()
getHead()
enQueue(x)

rear = rear -> next: rear = (rear+1)%maxSize

************/

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



#endif // SEQQUEUE_H_INCLUDED
