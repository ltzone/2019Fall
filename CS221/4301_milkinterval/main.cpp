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

bool all_property_false(bool** property, int l, int k)
{
    for (int i=0;i<k;++i)
        if (property[i][l] == false)
            return false;
    return true;
}


bool all_property_true(bool** property, int l, int k)
{
    for (int i=0;i<k;++i)
        if (property[i][l] == true)
            return false;
    return true;
}

int join (bool ** property, int l, int mid, int r, int k,int ta, int tb)
{
    for (int len=r-l+1;len>ta&&len>tb;--len)
    {
        for(int start=l; start+len>=mid && start+len-1<=r; ++start)
            if (count_avl(property,start,start+len-1,k)) return len;
    }
    return 0;
}


int merge_sort (bool** property, int l, int r, int k)
{
    // cout << "merging " << l << " and " << r << endl;
    if (l>r) return 0;
    if (l==r)
    {
       // cout << l <<" == " << r << endl;
        if (all_property_true(property,l,k)||all_property_false(property,l,k)) return 1;
        else return 0;
    }
    int mid = (l+r)/2;
    int a = merge_sort(property,l,mid,k);
    int b = merge_sort(property,mid+1,r,k);
    // cout << l <<" to join " << r << endl;
    int maxinterval = join(property,l,mid,r,k,a,b);

    if (maxinterval<a) maxinterval = a;
    if (maxinterval<b) maxinterval = b;
    // cout << "finished max=" << maxinterval << endl;
    return maxinterval;
}



int main()
{
    int n,k;
    cin >> n >> k;

    bool** property = new bool* [k];
    for (int j=0;j<k;++j)
    {
        property[j] = new bool [n];
        for (int i=0;i<n;++i)
            property[j][i] = false;
    }

    for (int i=0;i<n;++i)
    {
        int data;
        cin >> data;
        int cnt = 0;
        while (data>0 && cnt<k)
        {
            property[cnt][i] = data%2;
            data /= 2;
            ++cnt;
        }
    }

    /*
        for (int i=0;i<n;++i)
    {
        cin >> data[i];
    }

    for (int j=0;j<k;++j)
    {
        property[j] = new bool [n];
        for (int i=0;i<n;++i)
        {
            if (data[i]==0) continue;
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
*/
    // cout << count_avl(property,0,n-1,k);
    int result = merge_sort(property,0,n-1,k);
    cout << result;
    return 0;

    for (int j=0;j<k;++j)
    {
        delete [] property[j];
    }
    delete [] property;
}


