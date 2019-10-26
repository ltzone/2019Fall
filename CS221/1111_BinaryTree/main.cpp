#include <iostream>

using namespace std;


class Solution
{
private:
    char* head;
    int size;
    int maxloc;
    void doubleSpace()
    {
        char *tmp;
        tmp = new char [size*2];
        for (int i=0;i<size;++i) tmp[i] = head[i];
        for (int i=size;i<size*2;++i) tmp[i] = '@';
        size *= 2;
        delete [] head;
        head = tmp;
        return;
    }
public:
    Solution(){head = new char [2]; size = 2; maxloc = 1;}
    ~Solution(){delete [] head;}
    void inser(int i,const char &t)
    {
        if (i<size) head[i] = t;
        else
        {
            doubleSpace();
            head[i] = t;
        }
        if (i>maxloc) maxloc = i;
    }


    void buildbyorder_ind (char *preord, char *midord, int pre1, int pre2, int mid1, int mid2, int root)
    {
        if (pre1 == pre2)
        {
            inser(root,preord[pre1]);
            return;
        }
        int i;
        for (i=mid1;midord[i] != preord[pre1];++i) {}
        inser(root, midord[i]);
        if (mid1 <= i-1) buildbyorder_ind(preord,midord,pre1+1,pre1+i-mid1,mid1,i-1,root*2);
        if (i+1 <= mid2) buildbyorder_ind(preord,midord,pre1+i-mid1+1,pre2,i+1,mid2,root*2+1);
    }

    void buildbyorder (char *preord, char *midord, int len)
    {
        buildbyorder_ind(preord,midord,0,len-1,0,len-1,1);
    }

    void print()
    {
        for (int i=1;i<=maxloc;++i)
        {
            if (head[i] == '@')
                cout << "NULL" << ' ';
            else
                cout << head[i] << ' ';
        }
    }
};





int main()
{
    char preord[27];
    char midord[27];
    cin >> preord;
    cin >> midord;
    int len = 0;
    while (preord[len]!='\0') ++len;

    Solution t;
    t.buildbyorder(preord,midord,len);

    t.print();


    return 0;
}
