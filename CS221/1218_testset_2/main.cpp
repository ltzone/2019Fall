#include <iostream>

using namespace std;

int sz=0;


int divide(int low, int high, int *arr)
{
    int k = arr[low];
    do
    {
        while(low<high&&arr[high]>=k) --high;
        if(low<high){arr[low]=arr[high];++low;}
        while(low<high&&arr[low]<=k) ++low;
        if(low<high){arr[high]=arr[low];--high;}
    } while(low!=high);
    arr[low]=k;
    return low;
}

void qsort(int* input, int &cnt)
{
    int tmp;
    for (int j=1;j<cnt;++j)
    {
        tmp = input[j];
        int k;
        for (k=j-1;tmp<input[k]&&k>=0;--k)
            input[k+1]=input[k];
        input[k+1]=tmp;
    }
    int k=0;
    for (int j=0;j<cnt;++j)
    {
        if (input[j]!=input[j+1])
        {
            input[k] = input[j];
            ++k;
        }
    }
    cnt = k;
}

/***
int bfind(int x,int low, int high, int arr[])
{
    if (high<low) return -1;
    int mid = (high+low)/2;
    if(arr[mid]==x) return mid;
    if(arr[mid]<x) return bfind(x,mid+1,high,arr);
    if(arr[mid]>x) return bfind(x,low,mid-1,arr);
    return -1;
}
***/

int bfind(int x,int arr[])
{
    int low = 0,high=sz-1,mid;
    while (low<=high)
    {
        mid = (low+high)/2;
        if (x==arr[mid]) return mid;
        if (x<arr[mid]) high = mid-1;
        else low = mid+1;
    }
    return -1;
}


void print(int set[])
{
    for (int i=0;i<sz;++i)
        cout << set[i]<<' ';
    cout << endl;
}


int main()
{
    int set[10000]={0};
    bool del[10000]={0};

    int N;
    cin >> N;
    char op;
    int opn,tmp;

    for (int u=0;u<N;++u)
    {
        cin >> op;
        cin >> opn;
        if (op == '+')
        {
            for (int i=0;i<opn;++i)
            {
                cin >> tmp;
                if (bfind(tmp,set)==-1)
                    set[sz++]=tmp;
            }
            qsort(set,sz);
        }

        else if (op == '-')
        {
            for (int i=0;i<opn;++i)
            {
                cin >> tmp;
                int label = bfind(tmp,set);
                if (label!=-1)
                    del[label] = true;
            }
            int p = 0, newsize=sz;
            for (int i=0;i<sz;++i)
            {
                if (del[i]) {newsize--;del[i]=false;}
                else {set[p]=set[i];++p;}
            }
            sz = newsize;
        }

        else if (op == '*')
        {
            for (int i=0;i<opn;++i)
            {
                cin >> tmp;
                int label = bfind(tmp,set);
                if (label!=-1)
                    del[label] = true;
            }

            int p = 0, newsize=sz;
            for (int i=0;i<sz;++i)
            {
                if (del[i]) {set[p]=set[i];++p;del[i]=false;}
                else {--newsize;}
            }
            sz = newsize;
        }

        print(set);


    }



	return 0;
}
