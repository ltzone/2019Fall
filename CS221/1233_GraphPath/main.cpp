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
    int dfs(int v0,int n)
    {
        bool *visited = new bool[Vers+1];
        for (int i=1; i<= Vers; ++i)
        {
            visited[i] = false;
        }
        path_count = 0;
        dfs(v0,n,visited);
        return path_count;
    }
    void dfs(int v0,int n,bool* visited)
    {
        edgeNode *p = verList[v0].head;
        visited[v0] = true;
        if (n==0)
        {
            ++path_count;
            return;
        }
        while (p!=NULL)
        {
            if (visited[p->dst]==false)
            {
                dfs(p->dst,n-1,visited);
                visited[p->dst] = false;
            }
            p = p->next;

        }
    }

};




int main()
{
    int n, m, start, M;
    cin >> n >> m >> start >> M;
    Solution t(n);
    t.build(m);
    cout << t.dfs(start,M);
    return 0;
}
