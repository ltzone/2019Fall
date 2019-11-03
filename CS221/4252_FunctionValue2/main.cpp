#include <cstdio>
#include <cmath>
using namespace std;

float getmid (int a, int b)
{
    return -(float(b)/2.0/float(a));
}

int f (int a, int b, int c, int x)
{
    return a*x*x+b*x+c;
}

class Iter
{
private:
    int a,b,c;
    int mid;
    bool leftflag;
    bool switchflag;
    int i;
public:
    Iter(int a0,int b0,int c0)
    {
        a = a0; b = b0; c = c0; i = 0;
        float u = getmid(a,b);
        mid = floor(u);
        if (u-mid<=0.5) leftflag = true;
        else leftflag = false;
        switchflag = false;
    }
    int get()
    {
        if (leftflag)
        {
            if (switchflag) ++i;
            switchflag = !switchflag;
            return f(a,b,c,mid+(1-2*switchflag)*i);
        }
        else
        {
            if (switchflag) ++i;
            switchflag = !switchflag;
            return f(a,b,c,mid+1+(2*switchflag-1)*i);
        }
    }
};

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
    int maxval;
    int gethead() const {return array[1];}
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
        for(;hole>1&x>array[hole/2];hole/=2)
            array[hole] = array[hole/2];
        array[hole] = x;
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
            if (child!=currentsize && array[child+1]>array[child])
                child++;
            if (array[child]>tmp) array[hole] = array[child];
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
    Iter ** iters = new Iter* [n];
    int a,b,c;
    heap res;
    for (int i=0;i<n;++i)
    {
        scanf("%d %d %d",&a,&b,&c);
        iters[i] = new Iter(a,b,c);
        for (int j=0;j<k/n+1;++j)
            res.enQueue(iters[i]->get());
    }
    for (int i=0;i<n;++i)
    {
        int tmp;
        while ((tmp = iters[i]->get())<res.gethead())
        {
            res.deQueue();
            res.enQueue(tmp);
        }
    }
    for (int i=0;i<n;++i)
    {
        delete [] iters[i];
    }
    delete [] iters;


    int * output = new int [n*(k/n+1)];
    for (int i=0;i<n*(k/n+1);++i) output[i]=res.deQueue();
    int i=n*(k/n+1)-1;
    for (int cnt=0;cnt<k;++cnt) { printf("%d ",output[i]); --i;}
    delete [] output;
    return 0;
}
