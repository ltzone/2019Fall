#include <iostream>
#include <stack>
using namespace std;

/************
STL stack

    top_p
[a[n-1],next] -> [a[n-2],next] -> ... -> [a[0]*NULL] (-> NULL :empty)

bool isEmpty() const;
void push(const elemType &x);
elemType pop();
elemType top() const;

************/
template <class elemType>
class linkStack
{
private:
    struct node {
          elemType  data;
      node *next;
      node(const elemType &x, node *N = NULL)
          {data = x; next = N;}
      node():next(NULL) {}
      ~node() {}
    };
    node *top_p;
public:
    linkStack();
    ~linkStack();
    bool isEmpty() const;
    void push(const elemType &x);
    elemType pop();
    elemType top() const;
};

template <class elemType>
linkStack<elemType>::linkStack()
{
    top_p = NULL;
}

template <class elemType>
linkStack<elemType>::~linkStack()
{
    node *tmp;
    while (top_p != NULL) {
        tmp = top_p;
        top_p = top_p ->next;
        delete tmp;
	}
}

template <class elemType>
void linkStack<elemType>::push(const elemType &x)
{
    top_p = new node(x, top_p);
}

template <class elemType>
elemType linkStack<elemType>::pop()
{
    node *tmp = top_p;
    elemType x = tmp->data;
    top_p = top_p ->next;
    delete tmp;
    return x;
}

template <class elemType>
elemType linkStack<elemType>::top() const
{
    return top_p ->data;
}

template <class elemType>
bool linkStack<elemType>::isEmpty() const
{
    return top_p == NULL;
}



class BST
{
private:
    struct Node
    {
        int data;
        Node *left, *right;
        Node (const int &dat, Node* lt=NULL, Node* rt =NULL)
        :data(dat),left(lt),right(rt){}
    };
    Node* root;
    struct StNode
    {
        Node *node;
        int TimesPop;
        StNode ( Node *N = NULL ):node(N), TimesPop(0) {}
    };
public:
    BST(){root = NULL;}
    ~BST() {makeEmpty(root);}
    bool find(const int &x) const {return find(x,root);}
    int find_ith(const int x)
    {
        linkStack<StNode> s;
        StNode current(root);
        s.push(current);
        int cnt=0;
        while (!s.isEmpty())
        {
            current = s.pop();
            if ( ++current.TimesPop == 2 )
            {
                 ++cnt;
                if (cnt==x) return current.node->data;

                if ( current.node->right != NULL )
                    s.push(StNode(current.node->right ));
            }
            else {
                s.push( current );
                if ( current.node->left != NULL )
                    s.push(StNode(current.node->left) );
            }
        }
        return 0;
    }
    void insert(const int &x) {insert(x,root);}
    void remove(const int &x) {remove(x,root);}
    void delete_interval(const int &x1, const int &x2)
    { delete_interval(x1,x2,root); }
    void delete_less(const int &x2)
    { delete_less(x2,root); }
    void delete_more(const int &x1)
    { delete_more(x1,root); }


    void midOrder()
    {
        linkStack<StNode> s;
        StNode current(root);
        s.push(current);
while (!s.isEmpty()) {
	  current = s.pop();
      if ( ++current.TimesPop == 2 )  {
		  cout << current.node->data << ' ';
		  if ( current.node->right != NULL )
               s.push(StNode(current.node->right ));}
	  else { s.push( current );
           	 if ( current.node->left != NULL )
                s.push(StNode(current.node->left) );
	        }
     }
}




private:
    void insert(const int &x, Node *&t)
    {
        if (t==NULL) t = new Node (x,NULL,NULL);
        else if (x < t->data) insert(x,t->left);
        else insert(x,t->right);
    }
    void remove(const int &x, Node *&t)
    {
        if (t==NULL) return;
        if (x<t->data) remove(x,t->left);
        else if (x>t->data) remove(x,t->right);
        else if (t->left!=NULL && t->right!=NULL)
        {
            Node *tmp = t->right;
            while (tmp->left!=NULL) tmp = tmp->left;
            t->data = tmp->data;
            remove(t->data,t->right); //t->right?
        }
        else
        {
            Node *oldNode = t;
            t = (t->left!=NULL)? t->left:t->right;
            delete oldNode;
        }
    }
    bool find(const int &x, Node *t) const
    {
        if (t==NULL) return false;
        if (t->data == x) return true;
        else if (x<t->data) return find(x,t->left);
        else return find(x,t->right);
    }
    void makeEmpty(Node *&t)
    {
        if (t==NULL) return;
        makeEmpty(t->left);
        makeEmpty(t->right);
        delete t;
        t = NULL;
    }
    void delete_interval(const int &x1, const int &x2, Node *&t)
    {
        if (t==NULL) return;
        if (t->data<=x1) delete_interval(x1,x2,t->right);
        else if (t->data>=x2) delete_interval(x1,x2,t->left);
        else
        {
            if (t->left!=NULL) delete_interval(x1,x2,t->left);
            if (t->right!=NULL) delete_interval(x1,x2,t->right);
            remove(t->data,t);
        }
    }


    void delete_less(const int x2, Node *&t)
    {
        if (t==NULL) return;
        if (t->data>=x2) delete_less(x2,t->left);
        else
        {
            if (t->left!=NULL) delete_less(x2,t->left);
            if (t->right!=NULL) delete_less(x2,t->right);
            remove(t->data,t);
        }
    }
    void delete_more(const int x1, Node *&t)
    {
        if (t==NULL) return;
        else if (t->data<=x1) delete_more(x1,t->right);
        else
        {
            if (t->left!=NULL) delete_more(x1,t->left);
            if (t->right!=NULL) delete_more(x1,t->right);
            remove(t->data,t);
        }
    }

};




int main()
{
    BST t;
    int opcount;
    cin >> opcount;
    for (int i=0;i<opcount;++i)
    {
        int q;
        cin >> q;
        t.insert(q);
    }

    cin >> opcount;
    for (int i=0;i<opcount;++i)
    {
        int q;
        cin >> q;
        if (t.find(q))
            cout << "Y" << endl;
        else
            cout << "N" << endl;
    }


    return 0;
}
