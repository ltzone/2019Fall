#include <iostream>

using namespace std;


/************
STL linkQueue
   front                       rear
[a1,next]->[a2,next]->....->[an,NULL]
i.p. for empty queue: front = rear = NULL

isEmpty()
enQueue(elemType)
deQueue()
getHead()

************/
template <class elemType>
class linkQueue
{
private:
    struct node {
        elemType  data;
        node *next;
        node(const elemType &x, node *N = NULL){ data = x; next = N;}
        node():next(NULL) {}
        ~node() {}
	};
	node *front, *rear;
public:
    linkQueue();
    ~linkQueue();
    bool isEmpty() const;
    void enQueue(const elemType &x);
    elemType deQueue();
    elemType getHead() const;
};

template <class elemType>
linkQueue<elemType>::linkQueue()
{
   front = rear = NULL;
}

template <class elemType>
void linkQueue<elemType>::enQueue(const elemType &x)
{
    if (rear == NULL) front = rear = new node(x);
    else rear = rear->next = new node(x);
}

template <class elemType>
elemType linkQueue<elemType>::deQueue()
{
    node *tmp = front;
    elemType value = front->data;
    front = front->next;
    if (front == NULL) rear = NULL;
    delete tmp;
    return value;
}

template <class elemType>
bool linkQueue<elemType>::isEmpty() const
{
     return front == NULL;
}

template <class elemType>
elemType linkQueue<elemType>::getHead() const
{
     return front->data;
}

template <class elemType>
linkQueue<elemType>::~linkQueue()
{
    node *tmp;
    while (front != NULL) {
        tmp = front;
        front = front->next;
        delete tmp;
    }
}

/************
STL Binary Tree
*************
*************
************/


template<class T>
class binaryTree
{
    friend void printTree(const binaryTree &t, T flag);
private:
    struct Node
    {
        Node  *left , *right ;
        T data;
        Node() : left(NULL), right(NULL) { }
        Node(T item, Node *L = NULL, Node * R =NULL ):
            data(item), left(L), right(R) {}
        ~Node() {}
    };
    Node *root;
    public:
        binaryTree() : root(NULL) {}
        binaryTree(T x) { root = new Node(x); }
        ~binaryTree();
        void clear() ;
        bool isEmpty() const;
        T Root(T flag) const;
        T lchild(T x, T flag) const;
        T rchild(T x, T flag) const;
        void delLeft(T x) ;
        void delRight(T x);
        void preOrder() const;
        void midOrder() const;
        void postOrder() const;
        void levelOrder(T flag) const;
        void createTree(T flag);
        T parent(T x, T flag) const { return flag; }

        void buildbyorder_ind (T preord[], T midord[], int pre1, int pre2, int mid1, int mid2, Node* root)
        {
            if (pre1 > pre2) return;
            if (pre1 == pre2)
            {
                root->data = preord[pre1];
                return;
            }
            int i;
            for (i=mid1+1;midord[i] != preord[pre1];++i) {}
            root -> data = midord[i];
            root -> left = new Node;
            root -> right = new Node;
            buildbyorder_ind(preord,midord,pre1+1,pre1+i-mid1,mid1,i-1,root->left);
            buildbyorder_ind(preord,midord,pre1+i-mid1+1,pre2,i+1,mid2,root->right);
        }

        void buildbyorder (T preord[], T midord[], int len)
        {
            clear();
            root = new Node;
            buildbyorder_ind(preord,midord,0,len-1,0,len-1,root);
        }


    private:
        Node *find(T x, Node *t ) const;
        void clear(Node *&t) ;
        void preOrder(Node *t)  const;
        void midOrder(Node *t) const;
        void postOrder(Node *t)  const;
};

template<class T>
bool binaryTree<T>::isEmpty() const
{
    return root == NULL;
}

template <class T>
T binaryTree<T>::Root(T flag) const
{
    if (root == NULL) return flag;
    else return root->data;
}

template<class T>
void binaryTree<T>::clear(binaryTree<T>::Node *&t)
{
    if (t == NULL)  return;
    clear(t->left);
    clear(t->right);
    delete t;
    t = NULL;
}

template<class T>
void binaryTree<T>::clear()
{
    clear(root);
}

template <class T>
binaryTree<T>::~binaryTree()
{
	    clear(root);
}

template<class T>
void binaryTree<T>::preOrder(binaryTree<T>::Node *t)  const
{
    if (t == NULL) return;
    cout << t->data << ' ';
    preOrder(t->left);
    preOrder(t->right);
}

template<class T>
void binaryTree<T>::preOrder()  const
{    cout << "\nPredoredr:";
     preOrder(root);
}

template<class T>
void binaryTree<T>::midOrder(binaryTree<T>::Node *t) const
{
    if (t == NULL) return;
    midOrder(t->left);
    cout << t->data << ' ';
    midOrder(t->right);
}

template<class T>
void binaryTree<T>::midOrder() const
{
    cout << "midOrder:";
    midOrder(root);
}

template<class T>
void binaryTree<T>::postOrder(binaryTree<T>::Node *t)  const
{
    if (t == NULL) return;
    postOrder(t->left);
    postOrder(t->right);
    cout << t->data << ' ';
}

template<class T>
void binaryTree<T>::postOrder()  const
{
    cout << "postOrder:";
    postOrder(root);
}

template<class T>
void binaryTree<T>::levelOrder(T flag) const
{
    linkQueue< Node * > que;
    Node *tmp;
    que.enQueue(root);
    while (!que.isEmpty())
    {
        tmp = que.deQueue();
        if (tmp)
        {
            cout << tmp->data << ' ';
            if (tmp->left) que.enQueue(tmp->left);
            else que.enQueue(NULL);
            if (tmp->right) que.enQueue(tmp->right);
            else que.enQueue(NULL);
        }
        else cout << "NULL ";
    }
}

template <class T>
typename binaryTree<T>::Node *binaryTree<T>::
 find(T x, binaryTree<T>::Node *t) const
{
    Node *tmp;
    if (t == NULL) return NULL;
    if (t->data == x) return t;
    if (tmp = find(x, t->left) ) return tmp;
    else return find(x, t->right);
}

template <class T>
void binaryTree<T>::delLeft(T x)
{
    Node *tmp = find(x, root);
    if (tmp == NULL) return;
    clear(tmp->left);
}

template <class T>
void binaryTree<T>::delRight(T x)
{
    Node *tmp = find(x, root);
    if (tmp == NULL) return;
    clear(tmp->right);
}

template <class T>
T binaryTree<T>::lchild(T x, T flag) const
{
    Node * tmp = find(x, root);
    if (tmp == NULL || tmp->left == NULL) return flag;
    return tmp->left->data;
}

template<class T>
T binaryTree<T>::rchild(T x, T flag) const
{
    Node *tmp = find(x, root);
    if (tmp == NULL || tmp->right == NULL) return flag;
    return tmp->right->data;
}

template <class Type>
void binaryTree<Type>::createTree(Type flag)
{
    linkQueue< Node * > que;
    Node *tmp;
    Type x, ldata, rdata;
    cout << "Input root: ";
    cin >> x;
    root = new Node(x);
    que.enQueue(root);
    while (!que.isEmpty())
    {
        tmp = que.deQueue();
        cout << "Input" << tmp->data
                << "'s two songs(" << flag
                << "represents null)£º";
        cin >> ldata >> rdata;
        if (ldata != flag)
            que.enQueue(tmp->left = new Node(ldata));
        if (rdata != flag)
           que.enQueue(tmp->right = new Node(rdata));
    }
    cout << "create completed!\n";
}







int main()
{
    char preord[27];
    char midord[27];
    cin >> preord;
    cin >> midord;
    int len = 0;
    while (preord[len]!='\0') ++len;

    binaryTree<char> t;
    t.buildbyorder(preord,midord,len);

    t.levelOrder(preord[len-1]);


    return 0;
}
