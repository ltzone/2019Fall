#include <cstdio>
#include <cmath>
using namespace std;

float getmid (int a, int b)
{
    return -(float(b)/2.0/float(a));
}

int f (int a, int b, int c, int x)
{
    return a*x*x+b*x+c;
}




class Solution
{
private:
    struct node {
       int  data;
       node *prev, *next;
       node(const int &x, node *p = NULL, node *n = NULL)
               { data = x; next = n; prev = p;}
       node( ):next(NULL), prev(NULL) {}
       ~node() {}
    };
    node  *head, *tail;
    int currentLength;


public:
    Solution(int a,int b,int c,int k)
    {
        head = new node;
        head->next = tail = new node;
        tail->prev = head;
        currentLength = 0;

        float u = getmid(a,b);
        int t = floor(u);
        if (u-t<=0.5)
        {
            insert_at_tail(f(a,b,c,t));
            for (int j=1;j<=k/2+1;++j)
            {
                insert_at_tail(f(a,b,c,t+j));
                insert_at_tail(f(a,b,c,t-j));
            }

        }
        else
        {
            insert_at_tail(f(a,b,c,t+1));
            for (int j=1;j<=k/2;++j)
            {
                insert_at_tail(f(a,b,c,t+1-j));
                insert_at_tail(f(a,b,c,t+1+j));
            }
        }
    }
    void insert_at_head(int x)
    {
        node *tmp;
        tmp = new node(x, head, head->next);
        head->next->prev = tmp;
        head->next = tmp;
        ++currentLength;
    }
    void insert_at_tail(int x)
    {
        node *tmp;
        tmp = new node(x, tail->prev, tail);
        tail->prev->next = tmp;
        tail->prev = tmp;
        ++currentLength;
    }
    void insert_before(node * y, int x)
    {
        node *tmp;
        tmp = new node(x, y->prev, y);
        y->prev->next = tmp;
        y->prev = tmp;
    }
    void print(int k)
    {
        node *tmp=head->next;
        for (int i=0;i<k;++i)
        {
            printf("%d ",tmp->data);
            tmp = tmp->next;
        }
        return;
    }
    void updaterow(int a,int b,int c)
    {
        float u = getmid(a,b);
        int t = floor(u);
        node* seqcur = head->next;
        node* seqmax = tail->prev;
        //printf("#%f#",(u-t));
        if (u-t<=0.5)
        {

            bool flag = true; //1-2flag --- left
            int fvalue = f(a,b,c,t);
            if (fvalue>=seqmax->data) return;
            int i=0;
            while ((fvalue=(f(a,b,c,t+(1-2*flag)*i)))<seqmax->data)
            {
                if (flag) ++i;
                flag = !flag;
                while (seqcur->data<fvalue) seqcur = seqcur -> next;
                insert_before(seqcur,fvalue);
                seqmax = seqmax -> prev;
            }
        }
        else
        {
            bool flag = true; //1-2flag --- left
            int fvalue = f(a,b,c,t);
            if (fvalue>=seqmax->data) return;
            int i=0;
            while ((fvalue=(f(a,b,c,t+1+(2*flag-1)*i)))<seqmax->data)
            {
                if (flag) ++i;
                flag = !flag;
                while (seqcur->data<fvalue) seqcur = seqcur -> next;
                insert_before(seqcur,fvalue);
                seqmax = seqmax -> prev;
            }
        }
        node* p = seqmax->next, *q;
        seqmax->next = tail;
        while (p->next!=NULL)
        {
            q = p->next;
            delete p;
            p = q;
        }
        tail->prev = seqmax;
    }
};




int main()
{
    int n,k;
    scanf("%d %d",&n,&k);
    int a,b,c;
    scanf("%d %d %d",&a,&b,&c);
    Solution t(a,b,c,k);
      //      t.print(k);
    //        printf("\n");
    for (int i=1;i<n;++i)
    {
        scanf("%d %d %d",&a,&b,&c);
        t.updaterow(a,b,c);
  //              t.print(k);
//        printf("\n");
    }
 t.print(k);
    return 0;

}
