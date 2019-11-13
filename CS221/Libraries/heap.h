#ifndef HEAP_H_INCLUDED
#define HEAP_H_INCLUDED


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

#endif // HEAP_H_INCLUDED
