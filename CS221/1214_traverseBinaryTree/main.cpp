#include <cstdio>

using namespace std;


    void preOrder(int t, int *son_of, int *neb_of, int *tree )
    {       if (tree[t] == 0) return;
            printf("%d ", tree[t]);
            preOrder(son_of[t],son_of,neb_of,tree);
            preOrder(neb_of[t],son_of,neb_of,tree);
    }
    void PreOrder(int *son_of, int *neb_of, int *tree)
    {
         preOrder(1,son_of,neb_of,tree);
    }
    void midOrder(int t, int *son_of, int *neb_of, int *tree )
    {       if (tree[t] == 0) return;
            midOrder(son_of[t],son_of,neb_of,tree);
            printf("%d ", tree[t]);
            midOrder(neb_of[t],son_of,neb_of,tree);
    }
    void MidOrder(int *son_of, int *neb_of, int *tree)
    {
         midOrder(1,son_of,neb_of,tree);
    }

void LevelOrder(int *son_of, int *neb_of, int *tree)
    {
        int bitmap [100002] = {0};
        int head = 0;
        int tail = 0;
        int current = 1;

        while (current!=0)
        {
            bitmap[tail++] = current;
            printf("%d ",tree[current]);
            current = neb_of[current];
        }
        while ( head != tail )   {
            current = bitmap[head++];
            current = son_of[current];
            while (tree[current] != 0)
            {
                if ( tree[son_of[current]] != 0) bitmap[tail++]=current;
                printf("%d ", tree[current]);
                current = neb_of[current];
            }
        }
    }






int main()
{
    int tree [100002] = {0};
    int son_of [100002]= {0};
    int neb_of [100002] = {0};
    int rows,left,right,data;
    scanf("%d", &rows);
    for (int i=1;i<=rows;++i)
    {
        scanf("%d", &left);
        scanf("%d", &right);
        scanf("%d", &data);
        son_of[i] = left;
        neb_of[i] = right;
        tree[i] = data;
    }





    PreOrder(son_of,neb_of,tree);
    printf("\n");
    MidOrder(son_of,neb_of,tree);
    printf("\n");
    LevelOrder(son_of,neb_of,tree);
    return 0;
}
