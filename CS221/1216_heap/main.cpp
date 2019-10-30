#include <cstdio>

using namespace std;

class heap
{
private:
    int currentsize;
    int* array;
    int maxSize;
    void doubleSpace()
    {
        int *tmp = array;
        maxSize *= 2;
        array = new int [maxSize];
        for (int i=0;i<=currentsize;++i)
            array[i] = tmp[i];
        delete [] tmp;
    }
public:
    heap (int capacity = 50)
    {
        array = new int [capacity];
        maxSize = capacity;
        currentsize = 0;
    }
    ~heap () {delete [] array;}
    bool isEmpty () const { return currentsize == 0;}
    void enQueue (const int &x)
    {
        if (currentsize == maxSize - 1) doubleSpace();
        int hole = ++currentsize;
        for(;hole>1&x<array[hole/2];hole/=2)
            array[hole] = array[hole/2];
        array[hole] = x;
    }
    int find (const int &low)
    {
        int high =2147483647;
        int res=1;
        for (int idx=1;idx<=currentsize;++idx)
            if (array[idx]>low && array[idx]<high)
                {res = idx; high = array[idx];}
        return res;
    }
    void decrease (const int &idx, const int &diff)
    {
        array[idx] -= diff;
        int tmp = array[idx];
        int hole = idx;
        for(;hole>1&tmp<array[hole/2];hole/=2)
            array[hole] = array[hole/2];
        array[hole] = tmp;
        return;
    }
};






int main()
{
    int num;
    scanf("%d",&num);
    char op[10];
    int param;
    int param2;
    heap t;
    for (int i=0;i<num;++i)
    {
        scanf("%s",&op);
        if (op[0]=='i')
        {
            scanf("%d",&param);
            t.enQueue(param);
        }
        if (op[0]=='f')
        {
            scanf("%d",&param);
            printf("%d\n",t.find(param));
        }
        if (op[0]=='d')
        {
            scanf("%d %d",&param, &param2);
            t.decrease(param,param2);
        }
    }
    return 0;
}
