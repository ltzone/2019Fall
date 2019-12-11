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
    // for (int i=0;i<n;++i) cout << lis[i] <<' ';
    cout << lis[n/2] << endl;

    return 0;
}


