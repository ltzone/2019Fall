#include <iostream>



using namespace std;


/************
STL linkQueue
   front                       rear
[a1,next]->[a2,next]->....->[an,NULL]
i.p. for empty queue: front = rear = NULL

isEmpty()
enQueue(elemType)
deQueue()
getHead()

************/
template <class elemType>
class linkQueue
{
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

bool isCBT(int *l_son_of,int *r_son_of)
{
    linkQueue<int> que;
    int tmp;
    que.enQueue(0);
    bool levelflag = false;
    while (!que.isEmpty()&&!levelflag)
    {
        tmp = que.deQueue();
        if (l_son_of[tmp]&&r_son_of[tmp])
        {
            que.enQueue(l_son_of[tmp]);
            que.enQueue(r_son_of[tmp]);
        }
        else if ((!l_son_of[tmp])&&r_son_of[tmp])
            return false;
        else if ((!r_son_of[tmp]))
        {
            levelflag = true;
            if (!l_son_of[tmp])que.enQueue(l_son_of[tmp]);
        }
    }
    while (!que.isEmpty()&&levelflag)
    {
        tmp = que.deQueue();
        if (l_son_of[tmp]||r_son_of[tmp]) return false;
    }
    return true;
}


int main()
{
    int n;
    int cols;
    cin >> cols;
    int *l_son_of = new int [cols];
    int *r_son_of = new int [cols];

    for (int i=0;i<cols;++i)
    {
        l_son_of[i] = 0;
        r_son_of[i] = 0;
    }

    for (int j=1;j<cols;++j)
    {
        cin >> n;
        if (!l_son_of[n]) l_son_of[n] = j;
        else r_son_of[n] = j;
    }

    bool res;
    res = isCBT(l_son_of,r_son_of);
    if (res) cout << "true";
    else cout << "false";
    delete [] l_son_of;
    delete [] r_son_of;

    return 0;
}
