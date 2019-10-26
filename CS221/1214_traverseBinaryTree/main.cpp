#include <cstdio>

using namespace std;

class Solution
{
private:
    struct Node
    {
        Node *left;
        Node *right;
        int data;
        Node() : left(NULL), right(NULL), data(0) { }
        Node(int item, Node *L = NULL, Node * R =NULL ):
            data(item), left(L), right(R) {}
        ~Node() {}
    };
    Node *root;
    Node *bitmap [100002];
public:
    Solution(){root = new Node(1); bitmap[1] = root; }
    ~Solution();
    void clear(Node *&t) ;
    void clear();
    void insert_bit(int idx, Node* &a)
    {
        bitmap[idx] = a;
        return;
    }


    void buildtree(int row, int left, int right, int dat)
    {
        Node* current = bitmap[row];
        current->data = dat;
        if (left!= 0)
        {
            current->left = new Node;
            insert_bit(left, current->left);
        }
        if (right!=0)
        {
            current->right = new Node;
            insert_bit(right,current->right);
        }
        return;
    }

    void preOrder(Node *t)  const
    {       if (t == NULL) return;
            printf("%d ", t->data);
            preOrder(t->left);
            preOrder(t->right);
    }
    void preOrder()  const
    {
         preOrder(root);
    }

    void midOrder(Node *t)  const
    {       if (t == NULL) return;
            midOrder(t->left);
            printf("%d ", t->data);
            midOrder(t->right);
    }
    void midOrder()  const
    {
         midOrder(root);
    }

    void levelOrder()
    {
        int head = 1;
        int tail = 1;
        Node *current = root;
        bitmap[tail++] = root;
        printf("%d ", current->data);
        while ( head != tail )   {
            current = bitmap[head++];
            current = current -> left;
            while (current != NULL)
            {
                if ( current ->left != NULL ) bitmap[tail++]=( current );
                printf("%d ", current->data);
                current = current -> right;
            }
        }
    }





};





void Solution::clear(Solution::Node *&t)
{
    if (t == NULL)  return;
    clear(t->left);
    clear(t->right);
    delete t;
    t = NULL;
}


void Solution::clear()
{
    clear(root);
}

Solution::~Solution()
{
    clear(root);
}






int main()
{
    Solution t;
    int rows,left,right,data;
    scanf("%d", &rows);
    for (int i=1;i<=rows;++i)
    {
        scanf("%d", &left);
        scanf("%d", &right);
        scanf("%d", &data);
        t.buildtree(i,left,right,data);
    }

    t.preOrder();
    printf("\n");
    t.midOrder();
    printf("\n");
    t.levelOrder();
}
