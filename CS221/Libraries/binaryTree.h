#ifndef BINARYTREE_H_INCLUDED
#define BINARYTREE_H_INCLUDED

template<class T>
class bTree {
public:
    virtual void clear() = 0;
    virtual bool isEmpty() const = 0;
    virtual T Root(T flag) const = 0;
    virtual T parent(T x， T flag) const = 0;
    virtual T lchild（T x, T flag) const = 0;
    virtual T rchild（T x, T flag) const = 0;
    virtual void delLeft(T x) = 0;
    virtual void delRight(T x) = 0;
    virtual void preOrder() const = 0;
    virtual void midOrder() const = 0;
    virtual void postOrder() const= 0;
    virtual void levelOrder() const = 0;
};

template<class T>
class binaryTree : public bTree<T> {
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
        void levelOrder() const;
        void createTree(T flag);
        T parent(T x, T flag) const { return flag; }
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
void binaryTree<T>::levelOrder() const
{
    linkQueue< Node * > que;
    Node *tmp;
     
    cout << "layertraverse:";
    que.enQueue(root);
     
    while (!que.isEmpty())
    {
        tmp = que.deQueue();
        cout << tmp->data << ' ';
        if (tmp->left) que.enQueue(tmp->left);
        if (tmp->right) que.enQueue(tmp->right);
    }
}

template <class T>
binaryTree<T>::Node *binaryTree<T>::
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
void BinaryTree<Type>::createTree(Type flag)
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
                << "represents null)：";
        cin >> ldata >> rdata;
        if (ldata != flag)
            que.enQueue(tmp->left = new Node(ldata));
        if (rdata != flag)
           que.enQueue(tmp->right = new Node(rdata));
    }
    cout << "create completed!\n";
}

template <class T>
void printTree(const binaryTree<T> &t, T flag)
{
    linkQueue<T> q;
    q.enQueue(t.root->data);
    cout << endl;
    while (!q.isEmpty())
    {
        char p, l, r;
        p = q.deQueue();
        l = t.lchild(p,flag);
        r = t.rchild(p,flag);
        cout << p << "  " << l  << "  " << r << endl;
        if (l != '@') q.enQueue(l);
        if (r != '@') q.enQueue(r);
    }
}

#endif // BINARYTREE_H_INCLUDED
