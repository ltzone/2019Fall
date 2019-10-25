#include <iostream>

using namespace std;
class dLinkList
{
private:
struct node {
    char data;
    node *prev, *next;
    node(const char &x, node *p = NULL, node *n = NULL)
        { data = x; next = n; prev = p;}
    node( ):next(NULL), prev(NULL) {}
    ~node() {}
};
node  *head, *tail;
int currentLength;

public:
    dLinkList()
    {
        head = new node;
        head->next = tail = new node;
        tail->prev = head;
        currentLength = 0;
    }
    ~dLinkList() {clear(); delete head; delete tail;}
    void clear()
    {
         node  *p = head->next, *q;
         head->next = NULL;
         while (p != NULL) {
              q = p->next;
              delete p;
              p=q;
         }
         currentLength = 0;
    }

    int length() const {return currentLength;}
    bool isEmpty() const {return (currentLength == 0);}

    void insert_at_tail(const char &x)
    {
        node *tmp;
        tmp = new node(x, tail->prev, tail);
        tail->prev->next = tmp;
        tail->prev = tmp;
        ++currentLength;
    }
    void insert_at_head(const char &x)
    {
        node *tmp;
        tmp = new node(x, head, head->next);
        head->next->prev = tmp;
        head->next = tmp;
        ++currentLength;
    }
    void print()
    {
        node *p = head->next;
        while (p->next != NULL) {
            cout << p->data;
            p=p->next;
        }
        return;
    }

    void compare_and_plus(dLinkList &a)
    {
        char app;
        bool carry = false;
        bool flag = true; //if flag=false then not huiwen
        node *p = a.head, *q = a.tail;
        while (p->next->next != NULL)
        {
            p = p->next;
            q = q->prev;
            if (flag && p->data != q->data ) flag = false;
            app = p->data+q->data-'0'+carry;
            carry = (app>'9');
            if (carry) app -= 10;
            insert_at_head(app);
        }
        if (carry) insert_at_head('1');
        if (flag) {clear();}
        return ;
    }


};






int main()
{
    dLinkList a;
    char t;
    while ((t = cin.get())!='\n')
    {
        a.insert_at_tail(t);
    }

    dLinkList* route[100] = {&a};
    int loc=0;
    dLinkList* ptr;

    while (true)
    {
        ptr = new dLinkList();
        ptr->compare_and_plus(*route[loc]);
        route[++loc] = ptr;
        if (ptr->isEmpty()) break;
    }

    cout << loc-1 << endl;
    int i;
    for (i=0;i<loc-1;++i)
    {
        route[i]->print();
        cout << "--->";
    }
    route[i]->print();

    for (int i=1;i<=loc;++i)
        delete route[i];

    return 0;
}
