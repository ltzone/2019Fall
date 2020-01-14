#include <iostream>

using namespace std;

class Solution
{
private:
    int Vers,Edges,path_count;
    struct edgeNode
    {
        int dst;
        edgeNode* next;
        edgeNode(int e, edgeNode* n =NULL)
        {
            dst = e;
            next = n;
        }
    };

    struct verNode
    {
        int ver;
        edgeNode *head;
        verNode(edgeNode *h=NULL) {head=h;}
    };

    verNode * verList;


public:
    int numOfVer() const {return Vers;}
    int numOfEdges() const {return Edges;}
    Solution (int vSize)
    {
        Vers = vSize; Edges = 0;
        verList = new verNode[vSize+1];
        for (int i = 1; i <= Vers; ++i) verList[i].ver = i;
        path_count = 0;
    }
    void build(int eSize)
    {
        for (int i = 0; i< eSize;++i)
        {
            int src,dst;
            cin >> src >> dst;
            verList[src].head = new edgeNode(dst,verList[src].head);
            ++Edges;
        }
    }
    int dfs_for_max(int v0)
    {
        bool *visited = new bool[Vers+1];
        for (int i=1; i<= Vers; ++i)
        {
            visited[i] = false;
        }
        return dfs(v0,visited,v0);
    }
    int dfs(int v0,bool* visited,int max_val)
    {
        edgeNode *p = verList[v0].head;
        visited[v0] = true;
        while (p!=NULL)
        {
            if (visited[p->dst]==false)
            {
                int max_val_next = dfs(p->dst,visited,p->dst);
                if (max_val < max_val_next) max_val = max_val_next;
                visited[p->dst] = false;
            }
            p = p->next;
        }
        return max_val;
    }
};




int main()
{
    int n, m;
    cin >> n >> m;
    Solution t(n);
    t.build(m);
    for (int i=1;i<=n;++i)
        cout << t.dfs_for_max(i) << ' ';
    return 0;
}
