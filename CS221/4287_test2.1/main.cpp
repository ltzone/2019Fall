#include <iostream>

using namespace std;

class binaryTree
{
private:
    struct Node
    {
        Node  *left , *right ;
       char data;
        Node() : left(NULL), right(NULL) { }
        Node(char item, Node *L = NULL, Node * R =NULL ):
            data(item), left(L), right(R) {}
        ~Node() {}
    };
    Node *root;
public:
    binaryTree() : root(NULL) {}
    void build(char* pre, char* mid, int len, Node *&rt)
    {
        if (len == 0) return;
        if (len == 1)
        {
            rt = new Node(pre[0]);
            return;
        }
        char tmp = pre[0];
        int i;
        rt = new Node(tmp);
        for (i=0;i<len;++i)
        {
            if (mid[i] == tmp) break;
        }
        build(&pre[1],mid,i,rt->left);
        build(&pre[i+1],&mid[i+1],len-i-1,rt->right);
    }
    void Build(char* pre, char* mid, int len)
    {
        build(pre,mid,len,root);
    }
    void postOrder(Node *t)  const
    {
        if (t == NULL) return;
        postOrder(t->left);
        postOrder(t->right);
        cout << t->data;
    }

    void postOrder()  const
    {
        postOrder(root);
    }
};




int main()
{
    char mid[27];
    char pre[27];
    char t;
    int len = 0;
    while ((t=cin.get())!=' ')
    {
        pre[len] = t;
        ++len;
    }
    pre[len] = '\0';
    for (int i=0;i<len;++i)
        cin>> mid[i];
    mid[len] = '\0';

    binaryTree s;
    s.Build(pre,mid,len);
    s.postOrder();

    return 0;
}
