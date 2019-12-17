#include <iostream>
#include <queue>
using namespace std;




/**** definition of graph ***********
*************************************
*************************************
*************************************
*************************************
*************************************/


class adjListGraph{
private:
    int Vers, Edges, start, ed;
    struct edgeNode
    {                   //�ڽӱ��д洢�ߵĽ����
        int end;                          //�յ���
        int weight;                //�ߵ�Ȩֵ
        edgeNode *next;
        edgeNode(int e, int w, edgeNode *n = NULL)
        {
            end = e; weight = w; next = n;
        }
    };
    struct verNode{                     //���涥�������Ԫ������
        int ver;                   //����ֵ
        edgeNode *head;                 //��Ӧ�ĵ������ͷָ��
        verNode( edgeNode *h = NULL) { head = h;}
    };
    verNode *verList;
    int find(int v) const {
        for (int i = 1; i < Vers+1; ++i)
            if (verList[i].ver == v) return i;
    }


public:
    adjListGraph(int vSize,int st0,int ed0);
    int numOfVer() const {return Vers;}
    int numOfEdge() const {return Edges;}

    void build(int eSize)
    {
        for (int i = 0; i< eSize;++i)
        {
            int src,dst,wei;
            cin >> src >> dst >> wei;
            verList[src].head = new edgeNode(dst,wei,verList[src].head);
            ++Edges;
        }
    }

    void spath()
    {
        queue<int> q;
        int* distance = new int [Vers+1];
        bool* inq = new bool [Vers+1];
        for (int i=0;i<=Vers;++i)
        {
            distance[i] = 100000;
            inq[i] = false;
        }
        distance[start] = 0;
        q.push(start);
        inq[start] = true;
        while (!q.empty())
        {
            int v = q.front();
            q.pop();
            inq[v] = false;
            edgeNode* ecur = verList[v].head;
            while (ecur != NULL)
            {
                if (distance[ecur->end]>distance[v]+ecur->weight)
                {
                    distance[ecur->end]=distance[v]+ecur->weight;
                    if(inq[ecur->end]==false)
                    {
                        q.push(ecur->end);
                        inq[ecur->end] = true;
                    }
                }
                ecur = ecur->next;
            }
        }
        cout << distance[ed];
    }



};

adjListGraph::adjListGraph(int vSize,int st0,int ed0)
{
    Vers = vSize; Edges = 0; start = st0; ed = ed0;
    verList = new verNode[vSize+1];
    for (int i = 0; i <= Vers; ++i) verList[i].ver = i;
}






int main()
{
    int m,n,start,ed;
    cin >> m >> n >> start >> ed;
    adjListGraph t(m,start,ed);
    t.build(n);
    t.spath();
    return 0;
}
