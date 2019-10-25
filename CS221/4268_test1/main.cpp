#include <iostream>

using namespace std;


class zhujiao
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
    zhujiao(int n)
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
    ~zhujiao()
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

    int last(int k)
    {
        while (current->next != current)
            remove(k);
        return current->data;
    }
};



int main()
{
    int len;
    cin >> len;
    int num;
    cin >> num;
    zhujiao a(len);
    cout << a.last(num);
    return 0;
}
