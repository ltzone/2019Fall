#include <iostream>

using namespace std;
struct node
{
    int weight;
    int subval;
    node ():weight(0),subval(0){};
    node (const int &x):weight(x),subval(0){};
    node (const int &x,const int &y):weight(x),subval(y){};
};



class heap
{
private:
    node* array;
    int maxSize;
    void doubleSpace()
    {
        node *tmp = array;
        maxSize *= 2;
        array = new node [maxSize];
        for (int i=0;i<=currentsize;++i)
            array[i] = tmp[i];
        delete [] tmp;
    }

public:
    int currentsize;
    int maxval;
    node gethead() const {return array[1];}
    heap (int capacity = 50)
    {
        array = new node [capacity];
        maxSize = capacity;
        currentsize = 0;
    }
    ~heap () {delete [] array;}
    bool isEmpty () const { return currentsize == 0;}
    void enQueue (const node &x)
    {
        if (currentsize == maxSize - 1) doubleSpace();
        int hole = ++currentsize;
        for(;hole>1&x.weight<array[hole/2].weight;hole/=2)
            array[hole] = array[hole/2];
        array[hole] = x;
    }
    node deQueue()
    {
        node minitem;
        minitem = array[1];
        array[1] = array[currentsize--];
        node tmp = array[1];
        int child;
        int hole = 1;
        for (;hole*2<=currentsize;hole=child)
        {
            child = hole*2;
            if (child!=currentsize && array[child+1].weight<array[child].weight)
                child++;
            if (array[child].weight<tmp.weight) array[hole] = array[child];
            else break;
        }
        array[hole] = tmp;
        return minitem;
    }
    void print()
    {
        for (int i=1;i<=currentsize;++i)
            cout << array[i].subval << ' ' << array[i].weight << endl;
    }
};



int main()
{
    int rows,n;
    cin >> rows;
    heap t(rows+1);
    for (int i=0;i<rows;++i)
    {
        cin >> n;
        t.enQueue(node(n));
    }
    node tmp1,tmp2;
    while (t.currentsize>1)
    {
        tmp1 = t.deQueue();
        tmp2 = t.deQueue();
        t.enQueue(node(tmp1.weight+tmp2.weight,tmp1.weight+tmp2.weight+tmp1.subval+tmp2.subval));
    }
    cout << t.gethead().subval;
}
