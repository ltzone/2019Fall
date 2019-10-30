#include <cstdio>

using namespace std;


class heap
{
private:
    int currentsize;
    int* array;
    int maxSize;
    int capa;
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
    int maxval;
    int gethead() const {return array[1];}
    heap (int capacity = 50)
    {
        array = new int [capacity];
        maxSize = capacity;
        currentsize = 0;
        maxval = -2147483648;
        capa = capacity;
    }
    ~heap () {delete [] array;}
    bool isEmpty () const { return currentsize == 0;}
    void enQueue (const int &x)
    {
        if (currentsize == maxSize - 1) doubleSpace();
        if (x>maxval) maxval = x;
        if (currentsize<capa||x<maxval){
        int hole = ++currentsize;
        for(;hole>1&x<array[hole/2];hole/=2)
            array[hole] = array[hole/2];
        array[hole] = x;
        }
    }
    int deQueue()
    {
        int minitem;
        minitem = array[1];
        array[1] = array[currentsize--];
        int tmp = array[1];
        int child;
        int hole = 1;
        for (;hole*2<=currentsize;hole=child)
        {
            child = hole*2;
            if (child!=currentsize && array[child+1]<array[child])
                child++;
            if (array[child]<tmp) array[hole] = array[child];
            else break;
        }
        array[hole] = tmp;
        return minitem;
    }
};


int main()
{
    int n,k;
    scanf("%d %d",&n,&k);
    int * a = new int [n];
    int * b = new int [n];
    int * c = new int [n];
    int * mid = new int [n];
    int minitem = 0;
    int minval1,minval2;
    int globalmin = 2147483647;
    for (int i=0;i<n;++i)
    {
        scanf("%d %d %d",&a[i],&b[i],&c[i]);
        mid[i] = -(b[i]/(2*a[i]));
        minval1 = a[i]*mid[i]*mid[i]+b[i]*mid[i]+c[i];
        minval2 = a[i]*(mid[i]+1)*(mid[i]+1)+b[i]*(mid[i]+1)+c[i];
        if (minval2 < minval1) minval1 = minval2;
        if (minval1<globalmin) {minitem = i; globalmin = minval1;}
    }

    heap t(k);

    for (int j=mid[minitem]-k/2-2;j<mid[minitem]+k/2+2;++j)
        t.enQueue(a[minitem]*j*j+b[minitem]*j+c[minitem]);


    for (int i=1;i<n&&i!=minitem;++i)
    {
        int jl = mid[i];
        int jr = mid[i]+1;
        int tmpl = a[i]*jl*jl+b[i]*jl+c[i];
        int tmpr = a[i]*jr*jr+b[i]*jr+c[i];
        while (tmpl<t.maxval&&tmpr<t.maxval)
        {
            t.enQueue(tmpl); t.enQueue(tmpr);
            --jl; ++jr;
            tmpl = a[i]*jl*jl+b[i]*jl+c[i];
            tmpr = a[i]*jr*jr+b[i]*jr+c[i];
        }
        if (tmpl<t.maxval) t.enQueue(tmpl);
        if (tmpr<t.maxval) t.enQueue(tmpr);
    }



    for (int i=0;i<k;++i)
        printf("%d ",t.deQueue());

    return 0;
}
