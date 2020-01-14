#include <iostream>

using namespace std;


class DisjointSet {
private:
    int size;
    int *parent;
public:
    DisjointSet(int s) ;
    ~DisjointSet() {delete [] parent;}
    void Union(int root1, int root2);
    int Find(int x);
    int Count()
    {
        int cnt = 0;
        for (int i=0; i<size; ++i)
        {
            if (parent[i] < 0) ++cnt;
        }
        return cnt;
    }
    void Print()
    {
        int cnt = 0;
        for (int i=0; i<size; ++i)
        {
            cout << parent[i] << ' ';
        }
        cout << endl;
    }
};

DisjointSet::DisjointSet(int n)
{
    size = n;
    parent = new int [size];
    for (int i=0; i<size; ++i) parent[i] = -1;
}

int DisjointSet::Find(int x)
{
    if (parent[x] < 0) return x;
    return parent[x] = Find(parent[x]);
}

void DisjointSet::Union(int root1, int root2)
{
    if (root1 == root2) return;
    if (parent[root1] > parent[root2])
    {
        parent[root2] += parent[root1];
        parent[root1] = root2;
    }
    else
    {
        parent[root1] += parent[root2];
        parent[root2] = root1;
    }
 }




int main()
{
    int n, m;
    cin >> n >> m;
    int** graph = new int* [n];
    DisjointSet ds(m*n);

    // read graph
    for (int i=0;i<n;++i)
    {
        graph[i] = new int[m];
        for (int j=0;j<m;++j)
        {
            cin >> graph[i][j];

        }
    }

    //count oceans
    int oceans = 0;
    if (graph[0][0] == -1) ++oceans;

    // first row
    for (int j=1;j<m;++j)
    {
        if (graph[0][j-1] == 0 && graph[0][j] == 0)
        {
            ds.Union(ds.Find(j-1),ds.Find(j));
            //cout << "Union (" << 1 << "," << j << ") and (" << 1 <<"," << j+1 <<")" << endl;
            //ds.Print();
        }
        if (graph[0][j] == -1) ++oceans;
    }



    for (int i=1;i<n;++i)
    {
        if (graph[i][0] == -1) ++oceans;
        if (graph[i-1][0] == 0 && graph[i][0] == 0)
        {
            //cout << "Union (" << i << "," << 1 << ") and (" << i+1 <<"," << 1 <<")" << endl;
            ds.Union(ds.Find((i-1)*m),ds.Find(i*m));
            //ds.Print();
        }


        for (int j=1;j<m;++j)
        {
            if (graph[i][j-1] == 0 && graph[i][j] == 0)
            {
                ds.Union(ds.Find(i*m+j-1),ds.Find(i*m+j));
                //cout << "Union (" << i+1 << "," << j << ") and (" << i+1 <<"," << j+1 <<")" << endl;
                //ds.Print();
            }


            if (graph[i-1][j] == 0 && graph[i][j] == 0)
            {
                //cout << "Union (" << i << "," << j+1 << ") and (" << i+1 <<"," << j+1 <<")" << endl;
                ds.Union(ds.Find((i-1)*m+j),ds.Find(i*m+j));
                //ds.Print();
            }
            if (graph[i][j] == -1) ++oceans;
        }
    }

    cout << ds.Count()-oceans  << endl;

    return 0;
}
