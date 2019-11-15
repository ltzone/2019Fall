#include <iostream>

using namespace std;


class Solution
{
private:
struct node {
    int data;
    node *prev, *next;
    node(const int &x, node *p = NULL, node *n = NULL)
    { data = x; next = n; prev = p;}
    node( ):next(NULL), prev(NULL) {}
    ~node() {}
};
    node *head,*tail;
    int currentLength;
public:
    Solution()
    {
        head = new node(-2147483648);
        head->next = tail = new node(2147483647);
        tail->prev = head;
        currentLength = 0;
    }

    ~Solution() {clear(); delete head; delete tail;}

    void clear()
    {
        node  *p = head->next, *q;
        head->next = tail;
        tail->prev = head;
        while (p != tail) {
            q = p->next;
            delete p;
            p=q;
        }
        currentLength = 0;
    }



    void sort_input(int* input, int &cnt)
    {
        int tmp;
        for (int j=1;j<cnt;++j)
        {
            tmp = input[j];
            int k;
            for (k=j-1;tmp<input[k]&&k>=0;--k)
                input[k+1]=input[k];
            input[k+1]=tmp;
        }
        int k=0;
        for (int j=0;j<cnt;++j)
        {
            if (input[j]!=input[j+1])
            {
                input[k] = input[j];
                ++k;
            }
        }
        cnt = k;
    }

    void print()
    {
        node *p = head->next;
        while (p!=tail)
        {
            cout << p->data << ' ';
            p = p->next;
        }
        cout << endl;
    }

    void union_add(int* input, int cnt)
    {
        sort_input(input,cnt);
        node *p = head->next;
        int q = 0;
        node *tmp;
        for (;input[q]<p->data&&q<cnt;++q)
        {
            tmp = new node(input[q],p->prev,p);
            p->prev->next = tmp;
            p->prev = tmp;
            ++currentLength;
        }

        while (p!=tail && q<cnt)
        {
            if (p->data == input[q]) { p=p->next; ++q; }
            else if (p->data < input[q])
            {
                if (p->next->data > input[q])
                {
                    tmp = new node(input[q],p,p->next);
                    p->next->prev = tmp;
                    p->next = tmp;
                    ++currentLength;
                }
                p = p->next;
            }
            else {++q;}
        }
        for (;q<cnt;++q)
        {
            tmp = new node(input[q],p->prev,p);
            p->prev->next = tmp;
            p->prev = tmp;
            ++currentLength;
        }

        print();
    }

    void intersect (int* input, int cnt)
    {
        sort_input(input,cnt);
        node *p = head->next;
        int q = 0;
        node *tmp;
        while (p!=tail && q<cnt)
        {
            if (p->data == input[q]) { p=p->next; ++q; }
            else if (p->data < input[q])
            {
                tmp = p->next;
                p->prev->next = tmp;
                tmp->prev = p->prev;
                delete p;
                --currentLength;
                p = tmp;
            }
            else {++q;}
        }
        if (p!=tail)
        {
            tmp = p;
            p->prev->next = tail;
            tail->prev = p->prev;
            while (p!=tail)
            {
                tmp = p->next;
                delete p;
                p = tmp;
                --currentLength;
            }
        }
        print();
    }

    void intersect_minus (int* input, int cnt)
    {
        sort_input(input,cnt);
        node *p = head->next;
        int q = 0;
        node *tmp;
        for (;input[q]<p->data&&q<cnt;++q) {}
        while (p!=tail && q<cnt)
        {
            if (p->data == input[q])
            {
                tmp = p->next;
                p->prev->next = tmp;
                tmp->prev = p->prev;
                delete p;
                --currentLength;
                p = tmp;
                ++q;
            }
            else if (p->data < input[q])
            {
                p = p->next;
            }
            else {++q;}
        }
        print();
    }

};

void input_input (int* input, int cnt)
{
    for (int i=0;i<cnt;++i)
        cin >> input[i];
}


int main()
{
    Solution t;
    int opcnt,cnt;
    cin >> opcnt;
    char op;
    for (int i=0;i<opcnt;++i)
    {
        cin >> op;
        if (op== '*')
        {
            cin >> cnt; int *input = new int [cnt];
            input_input(input,cnt);
            t.intersect(input,cnt);
            delete [] input;
        }

        if (op== '+')
        {
            cin >> cnt; int *input = new int [cnt];
            input_input(input,cnt);
            t.union_add(input,cnt);
            delete [] input;
        }
        if (op== '-')
        {
            cin >> cnt; int *input = new int [cnt];
            input_input(input,cnt);
            t.intersect_minus(input,cnt);
            delete [] input;
        }
    }
    return 0;
}
