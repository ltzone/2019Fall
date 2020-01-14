#include <iostream>
using namespace std;

class adjListGraph{
private:
    int Vers, Edges;
    int start, ed;
    struct edgeNode
    {                   //邻接表中存储边的结点类
        int end;                          //终点编号
        int weight;                //边的权值
        edgeNode *next;
        edgeNode(int e, int w, edgeNode *n = NULL)
        {
            end = e; weight = w; next = n;
        }
    };
    struct verNode{                     //保存顶点的数据元素类型
        int ver;                   //顶点值
        int distance;
        int prev;
        int prevstep;
        edgeNode *head;                 //对应的单链表的头指针
        verNode( edgeNode *h = NULL) { head = h;}
        bool operator<(const verNode b) const
        {
            return (this->distance < b.distance);
        }
    };
    verNode **verList;
    int find(int v) const {
        for (int i = 1; i < Vers+1; ++i)
            if (verList[i]->ver == v) return i;
    }


public:
    adjListGraph(int vSize, int st0, int ed0);
    int numOfVer() const {return Vers;}
    int numOfEdge() const {return Edges;}
    void build(int eSize)
    {
        for (int i = 0; i< eSize;++i)
        {
            int src,dst,wei;
            cin >> src >> dst >> wei;
            verList[src]->head = new edgeNode(dst,wei,verList[src]->head);
            ++Edges;
        }
    }
    void dijkstra();
    void printpath(int start, int ed) const;
};

/************
STL stack

    top_p
[a[n-1],next] -> [a[n-2],next] -> ... -> [a[0]*NULL] (-> NULL :empty)

bool isEmpty() const;
void push(const elemType &x);
elemType pop();
elemType top() const;

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


template <class Type>
class priorityQueue
{private:
      int currentSize;
      Type *array;
      int maxSize;
      void doubleSpace()
      {
        Type *tmp = array;
        maxSize *= 2;
        array = new Type [maxSize];
        for (int i=0;i<=currentSize;++i)
            array[i] = tmp[i];
        delete [] tmp;
      }
      void buildHeap( );
      void percolateDown( int hole );
public:
    priorityQueue( int capacity = 100 )
	  { array = new Type[capacity];
         maxSize = capacity;
         currentSize = 0;}
    priorityQueue( const Type data[], int size );
	~priorityQueue() { delete [] array; }
    bool isEmpty( ) const { return currentSize == 0; }
    void enQueue( const Type & x );
    Type deQueue();
    Type getHead() { return array[1]; }
};
template <class Type>
void priorityQueue<Type>::enQueue( const Type & x )
{
    if( currentSize == maxSize - 1 )  doubleSpace();
  int hole = ++currentSize;
  for( ; hole > 1 && x < array[ hole / 2 ]; hole /= 2 )
            array[ hole ] = array[ hole / 2 ];
  array[ hole ] = x;
}
 template <class Type>
Type priorityQueue<Type>::deQueue()
{ Type minItem;
  minItem = array[ 1 ];
  array[ 1 ] = array[ currentSize-- ];
  percolateDown( 1 );
  return minItem;
 }
template <class Type>
void priorityQueue<Type>::percolateDown( int hole )
{  int child;
   Type tmp = array[ hole ];

   for( ; hole * 2 <= currentSize; hole = child )
      {  child = hole * 2;
         if( child != currentSize && array[ child + 1 ] < array[ child ] )
                child++;
         if( array[ child ] < tmp )   array[ hole ] = array[ child ];
                else    break;
       }
   array[ hole ] = tmp;
 }
template <class Type>
void priorityQueue<Type>::buildHeap( )
{  for ( int i = currentSize / 2; i > 0; i-- )
        percolateDown( i );
}



void adjListGraph::dijkstra()
{
    priorityQueue<verNode> dists;
    verList[start]->distance = 0;
    verList[start]->prevstep = 0;
    dists.enQueue(*(verList[start]));

    bool *known = new bool [Vers+1];
    for (int i=0;i<=Vers;++i)
    {
        known[i] = false;
    }

    for (int i=1;i<Vers;++i)
    {
        verNode cur;
        do
        {
            cur = dists.deQueue();
        }
        while (known[cur.ver]==true);

        known[cur.ver] = true;
        edgeNode* etmp = cur.head;
        while (etmp != NULL)
        {
            verNode* dst = verList[etmp->end];
            if (known[dst->ver] == false && ((cur.distance + etmp->weight < dst->distance)
             || (cur.distance + etmp->weight == dst->distance && dst->prevstep > cur. prevstep + 1)))
            {
                dst->distance = etmp->weight + cur.distance;
                dst->prevstep = cur.prevstep + 1;
                dst->prev = cur.ver;
                dists.enQueue(*dst);
            }
            etmp = etmp->next;
        }
    }

    cout << verList[ed]->distance << endl;
    printpath(start,ed);
}

void adjListGraph::printpath(int start, int ed) const
{
    if (start == ed)
    {
        cout << verList[start]->ver;
        return;
    }
    printpath(start,verList[ed]->prev);
    cout << " " << verList[ed]->ver;
}


adjListGraph::adjListGraph(int vSize, int st0, int ed0)
{
    start = st0, ed = ed0;
    Vers = vSize; Edges = 0;
    verList = new verNode* [vSize+1];
    for (int i = 0; i <= Vers; ++i)
    {
        verList[i] = new verNode();
        verList[i]->ver = i;
        verList[i]->distance = 1000000000;
        verList[i]->prev = 0;
        verList[i]->prevstep = 1000000000;
    }
}






int main()
{
    int m,n,start,ed;
    cin >> m >> n >> start >> ed;
    adjListGraph t(m,start,ed);
    t.build(n);
    t.dijkstra();
    return 0;
}
