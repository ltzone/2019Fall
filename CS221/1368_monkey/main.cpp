#include <iostream>

using namespace std;


class monkey
{ private:
      struct node {
            int data;
            node *next;
            node(const int &x, node *n = NULL)
                   { data = x; next = n;}
	         node():next(NULL) {}
	         ~node() {}
	   };
      node  *head;
      node *current;
      node *prev;
	  int currentLength;
  public:
    monkey(int n)
    {
        current = head = new node(1,head);
        prev = head;
        currentLength = n;
        for (int i=2;i<=n;++i)
        {
            prev->next = new node(i,prev->next);
            prev = prev->next;
        }
        prev->next = head;
    }
    ~monkey()
    {
        node* q = head;
        node* dtmp;
        for (int j=0;j<currentLength;++j)
        {

            dtmp = q->next;
            q->next = dtmp->next;
            delete dtmp;
        }
    }
    void insert(int k,int w)
    {
        for (int i=0;i<k-1;++i)
        {
            current = current->next;
            prev = prev->next;
        }
        current->next = new node(w,current->next);
        current = current->next;
        prev = prev->next;
        ++currentLength;
    }
    void remove(int k)
    {
        for (int j=0;j<k-1;++j)
        {
            current = current->next;
            prev = prev->next;
        }
        prev->next = current->next;
        delete current;
        current = prev->next;
        --currentLength;
    }
    int sum()
    {
        int sum = 0;
        for (int j=0;j<currentLength;++j)
        {
            sum += current->data;
            current = current->next;
        }
        return sum;
    }
};



int main()
{
    int len;
    int opcount;
    int op;
    int n,k;
    cin >> len >> opcount;
    monkey a(len);
    for (int i=0;i<opcount;++i)
    {
        cin >> op;
        switch (op)
        {
            case 0: cin >> n; a.remove(n);break;
            case 1: cin >> n >> k; a.insert(n,k);break;
        }
    }
    cout << a.sum() << endl;
    return 0;
}
