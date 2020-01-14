#include <iostream>
using namespace std;

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






struct edge {
    int beg, end;
    int w;
    bool operator<(const edge &rp) const
           {return w < rp.w;}
};

class DisjointSet {
private:
    int size;
    int *parent;
public:
    DisjointSet(int s) ;
    ~DisjointSet() {delete [] parent;}
    void Union(int root1, int root2);
    int Find(int x);
};

DisjointSet::DisjointSet(int n)
{
    size = n;
    parent = new int [size];
    for (int i=0; i<size; ++i) parent[i] = -1;
}

int DisjointSet::Find(int x)
{
    if (parent[x] < 0) return x;
    return parent[x] = Find(parent[x]);
}

void DisjointSet::Union(int root1, int root2)
{
    if (root1 == root2) return;
    if (parent[root1] > parent[root2])
    {
        parent[root2] += parent[root1];
        parent[root1] = root2;
    }
    else
    {
        parent[root1] += parent[root2];
        parent[root2] = root1;
    }
 }



class adjListGraph{
private:
    int Vers, Edges;
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
        edgeNode *head;                 //对应的单链表的头指针
        verNode( edgeNode *h = NULL) { head = h;}
    };
    verNode *verList;
    int find(int v) const {
        for (int i = 1; i < Vers+1; ++i)
            if (verList[i].ver == v) return i;
    }


public:
    adjListGraph(int vSize);
    int numOfVer() const {return Vers;}
    int numOfEdge() const {return Edges;}

    int kruskal() const
    {
        int result = 0;
        int edgesAccepted = 0,u,v;
        edgeNode *p;
        edge e;
        DisjointSet ds(Vers+1);
        priorityQueue<edge> pq;

        for (int i = 0; i< Vers; ++i)
        {
            for (p = verList[i].head; p != NULL; p = p->next)
                if (i < p->end)
                {
                    e.beg = i;
                    e.end = p->end;
                    e.w = p->weight;
                    pq.enQueue(e);
                }
        }

        while( edgesAccepted < Vers - 1 )
        {
            e = pq.deQueue();
            u = ds.Find(e.beg);
            v = ds.Find(e.end);
            if( u != v )
            {
                edgesAccepted++;
                ds.Union( u, v );
                result += e.w;
            }
        }

        return result;
    }

    void build(int eSize)
    {
        for (int i = 0; i< eSize;++i)
        {
            int src,dst,wei;
            cin >> src >> dst >> wei;
            verList[src].head = new edgeNode(dst,wei,verList[src].head);
            verList[dst].head = new edgeNode(src,wei,verList[dst].head);
            ++Edges;
        }
    }
};

adjListGraph::adjListGraph(int vSize)
{
    Vers = vSize; Edges = 0;
    verList = new verNode[vSize+1];
    for (int i = 0; i <= Vers; ++i) verList[i].ver = i;
}






int main()
{
    int m,n;
    cin >> m >> n;
    adjListGraph t(m);
    t.build(n);
    cout << t.kruskal();
    return 0;
}
