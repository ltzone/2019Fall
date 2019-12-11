#include <iostream>

using namespace std;

bool count_avl (bool** property, int l, int r, int k)
{
    if (l>r) return false;
    int i=l,cnt=0,curcnt=0;
    while (i<=r)
    {
        cnt += property[0][i];
        ++i;
    }
    for (int j=1;j<k;++j)
    {
        i = l;
        while (i<=r)
        {
            curcnt += property[j][i];
            ++i;
        }
        if (curcnt != cnt) return false;
        curcnt = 0;
    }
    return true;
}

bool all_property(bool** property, int l, int k)
{
    for (int i=0;i<k;++i)
        if (property[i][l] == false)
            return false;
    return true;
}

int merge_sort (bool** property, int l, int r, int k)
{
    if (l>r) return 0;
    if (l==r)
    {
        if (all_property(property,l,k)) return 1;
        else return 0;
    }
    int mid = (l+r)/2;
    int a = merge_sort(property,l,mid,k);
    int b = merge_sort(property,mid+1,r,k);
    int maxinterval = 0;
    for (int i=l;i<=mid;++i)
    {
        for (int j=r;j>=mid;--j)
        {
            if (count_avl(property,i,j,k))
            {
                if (maxinterval < j-i+1) maxinterval = j-i+1;
            }
        }
    }
    if (maxinterval<a) maxinterval = a;
    if (maxinterval<b) maxinterval = b;
    return maxinterval;
}



int main()
{
    int n,k;
    cin >> n >> k;
    int* data = new int [n];
    for (int i=0;i<n;++i)
    {
        cin >> data[i];
    }

    bool** property = new bool* [n];
    int div = 2;
    for (int j=0;j<k;++j)
    {
        property[j] = new bool [n];
        for (int i=0;i<n;++i)
        {
            property[j][i] = bool(data[i]%2);
            data[i] /= 2;
        }
        div *= 2;
    }



    for (int j=0;j<k;++j)
    {
        for (int i=0;i<n;++i)
        {
            cout << property[j][i] << ' ';
        }
        cout << endl;
    }


    cout << count_avl(property,0,n-1,k);
    cout << merge_sort(property,0,n-1,k);
    return 0;
}


