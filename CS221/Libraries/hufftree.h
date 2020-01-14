#ifndef HUFFTREE_H_INCLUDED
#define HUFFTREE_H_INCLUDED

template <class Type>
class hfTree{
private:
         struct  Node
	{  Type data; //���ֵ
              int weight;   //����Ȩֵ
              int parent, left, right;
	 };

         Node *elem;
         int length;
	public:
	     struct hfCode {
	         Type data;
	         string code;
		 };

	     hfTree(const Type *x, const int *w, int size);
	     void getCode(hfCode result[ ]);
	     ~hfTree() {delete [ ] elem;}
};
template <class Type>
hfTree<Type>::hfTree(const Type *v, const int *w, int size)
{  const int MAX_INT = 32767;
    int min1, min2;    //��С��������С����Ȩֵ
    int x, y;     //��С��������С�����±�

    //�ó�ֵ
    length = 2 * size;
    elem = new Node[length];
    for (int i = size; i < length; ++i)
         { elem[i].weight = w[i - size];
            elem[i].data = v[i - size];
           elem[i].parent = elem[i].left = elem[i].right = 0;
         }
// �����µĶ�����
 for (i = size - 1; i > 0; --i)
    { min1 = min2 = MAX_INT; x = y = 0;
       for (int j = i + 1; j < length; ++j)
		  if (elem[j].parent == 0)
		       if (elem[j].weight < min1)
                          { min2 = min1; min1 = elem[j].weight;
                             x = y; y = j; }
                       else if (elem[j].weight < min2)
                                 { min2 = elem[j].weight; x = j; }
         elem[i].weight = min1 + min2;
         elem[i].left = x; elem[i].right = y; elem[i].parent = 0;
         elem[x].parent = i; elem[y].parent = i;
     }
}
getCode(hfCode<Type> result[])
 {for (int i = size; i < length; ++i)
   {result[i - size].data = elem[i].data;
    result[i - size].code = "";
    p = elem[i].parent; s = i;
	while (p������0) {
		if (p�������� == s) result[i - size].code ǰ��ӡ�0��;
		    else result[i - size].code ǰ��1��;
		�Ƶ���һ�㣻
	}
   }
}
template <class Type>
void hfTree<Type>::getCode(hfCode result[])
 { int size = length / 2;
   int p,s; // s��׷�ݹ��������ڴ���Ľ�㣬p��s�ĸ�����±�
   for (int i = size; i < length; ++i)
     {  result[i - size].data = elem[i].data;
        result[i - size].code = "";
        p = elem[i].parent; s = i;
	while (p) {
		if (elem[p].left == s)
                    result[i - size].code = '0' + result[i - size].code;
		    else result[i - size].code = '1' + result[i - size].code;
		s = p; p = elem[p].parent;
	}  }  }
int main()
{ char ch[] = {"aeistdn"};
  int w[] = {10,15,12,3,4,13,1};
  hfTree<char> tree(ch, w, 7);
  hfTree<char>::hfCode result[7];
  tree.getCode(result);
  for (int i=0; i< 7; ++i)
      cout << result[i].data << ' '
              << result[i].code << endl;
  return 0;
}


#endif // HUFFTREE_H_INCLUDED
