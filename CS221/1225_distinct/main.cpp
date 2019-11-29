#include <iostream>

using namespace std;

int divide(int* a, int low, int high)
{
    int k = a[low];
    do
    {
        while(low<high && a[high]>=k) --high;
        if(low<high){ a[low]=a[high];++low;}
        while (low<high && a[low]<=k) ++low;
        if(low<high){a[high]=a[low];--high;}
    } while (low!=high);
    a[low] = k;
    return low;
}


void qs(int* a, int low ,int high)
{
    int mid;
    if (low>=high) return;
    mid = divide(a,low,high);
    qs(a,low,mid-1);
    qs(a,mid+1,high);

}

void qs(int* lis, int size)
{
    qs(lis,0,size-1);
}




int main()
{
    int n;
    cin >> n;
    int *lis = new int [n];
    for (int i=0;i<n;++i) cin >> lis[i];
    qs(lis,n);
    /****
    int cnt = 0;
    int k = lis[0];
    for (int i=1;i<n;++i)
    {
        if (lis[i]>k)
        {
            ++cnt;
            k = lis[i];
        }
    }
    cout << cnt+1;
    ***/
    for (int i=0;i<n;++i) cout << lis[i] <<' ';

    return 0;
}
