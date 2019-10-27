#include<cstdio>
using namespace std;
int n;
void preorder(int *son_of,int *neb_of,int *tree,int root)
{
	printf("%d ", tree[root]);
	if(son_of[root])
	{
		preorder(son_of,neb_of,tree,son_of[root]);
		int t=son_of[root];
		while(neb_of[t])
		{
			preorder(son_of,neb_of,tree,neb_of[t]);
			t=neb_of[t];
		}
	}
}
void postorder(int *son_of,int *neb_of,int *tree,int root)
{
	if(son_of[root])
	{
		postorder(son_of,neb_of,tree,son_of[root]);
		int t=son_of[root];
		while(neb_of[t])
		{
			postorder(son_of,neb_of,tree,neb_of[t]);
			t=neb_of[t];
		}
	}
	printf("%d ", tree[root]);
}
void seqorder(int *son_of,int *neb_of,int *tree,int root)
{
	int *queue=new int[n+1];
	queue[1]=root;
	int tail=2,head=1,t;
	while(head!=tail)
	{
		t=son_of[queue[head]];
		if(t)
		{
			queue[tail++]=t;
			while(neb_of[t])
			{
				t=neb_of[t];
				queue[tail++]=t;
			}
		}
		head++;
	}
	for(int i=1;i<=n;i++)
	{
		printf("%d ", tree[queue[i]]);
	}
}
int main()
{
	scanf("%d",&n);
	int *son_of=new int[n+1],*neb_of=new int[n+1],*tree=new int[n+1],*flag=new int[n+1];
	for(int i=1;i<=n;i++)
		flag[i]=0;
	for(int i=1;i<=n;i++)
	{
		scanf("%d %d %d",&son_of[i],&neb_of[i],&tree[i]);
		flag[son_of[i]]=1;
		flag[neb_of[i]]=1;
	}
	int root;
	for(int i=1;i<=n;i++)
		if(!flag[i])
		{
			root=i;
			break;
		}
	preorder(son_of,neb_of,tree,root);
	printf("\n");
	postorder(son_of,neb_of,tree,root);
	printf("\n");
	seqorder(son_of,neb_of,tree,root);
}
