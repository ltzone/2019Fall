#include <iostream>

using namespace std;

template <class KEY, class OTHER>
void simpleInsertSort(SET<KEY, OTHER> a[], int size)
{    int k;
     SET<KEY, OTHER> tmp; 
     for (int j=1; j<size; ++j) {
          tmp = a[j];
          for ( k = j-1; tmp.key < a[k].key && k >= 0; --k)
              a[k+1] = a[k];
          a[k+1] = tmp;
     }
}

template <class KEY, class OTHER>
void shellSort(SET<KEY, OTHER> a[], int size)
{
    int step, i, j;
    SET<KEY, OTHER> tmp;
 
    for (step = size/2; step > 0; step /= 2)     //step为希尔增量
          for (i = step; i < size; ++i) {
	     tmp = a[i];
                 for (j = i - step; j >= 0 && a[j].key > tmp.key;  j -= step)
	           a[j+step] = a[j];
	     a[j+step] = tmp;
         }
}

template <class KEY, class OTHER>
void simpleSelectSort(SET<KEY, OTHER> a[], int size)
{
      int  i, j, min;
      SET<KEY, OTHER> tmp;
 
      for (i = 0; i < size -1; ++i) {
	        min = i;
	        for (j = i+1; j < size; ++j)
		       if (a[j].key < a[min].key) min = j;
	        tmp = a[i]; a[i] = a[min]; a[min] = tmp;
     }
}

template <class KEY, class OTHER>
void heapSort(SET<KEY, OTHER> a[], int size)
{
    int  i;
    SET<KEY, OTHER> tmp;
 
    // 创建初始的堆
    for(  i = size / 2 - 1; i >= 0; i-- )
	   percolateDown( a, i, size );
 
   //执行n-1次deQueue
   for ( i = size - 1; i > 0; --i) {
	     tmp = a[0]; a[0] = a[i]; a[i] = tmp;       //delete  a[0]
	     percolateDown( a, 0, i );
   }
}

template <class KEY, class OTHER>
void percolateDown( SET<KEY, OTHER> a[], int hole, int size )
{
    int child;
    SET<KEY, OTHER> tmp = a[ hole ];

    for( ; hole * 2 + 1 < size; hole = child )	 {
       child = hole * 2 + 1;
	   if( child != size - 1 && a[ child + 1 ].key > a[ child ].key )
	         child++;
	    if( a[ child ].key > tmp.key )   a[ hole ] = a[ child ];
	    else    break;
    }
    a[ hole ] = tmp;
}
template <class KEY, class OTHER>
void bubbleSort(SET<KEY, OTHER> a[], int size)
{
    int i, j;
    SET<KEY, OTHER> tmp;
    bool flag = true;         //记录一趟起泡中有没有发生过交换
 
    for (i = 1; i < size && flag; ++i) {                 //size-1次起泡
        flag = false;
        for (j = 0; j < size-i; ++j)                              //第i次起泡
            if (a[j+1].key < a[j].key) {
                 tmp = a[j];      a[j] = a[j+1];     a[j+1] = tmp;
                 flag = true;
            }
        }
  }
template <class KEY, class OTHER>
int divide( SET<KEY, OTHER> a[], int low, int high)
{
     SET<KEY, OTHER>  k = a[low];
     do  {
          while (low < high && a[high].key >= k.key) --high;
          if (low < high) { a[low] = a[high]; ++low;}
          while (low < high && a[low].key <= k.key) ++low;
          if (low < high)  {a[high] = a[low]; --high;}
     } while (low != high);
     a[low] = k;
     return low;
}
template <class KEY, class OTHER>
void quickSort(SET<KEY, OTHER> a[], int size)
{
    quickSort(a, 0, size-1);
}
template <class KEY, class OTHER>
void merge(SET<KEY, OTHER> a[], int left, int mid, int right)
{
    SET<KEY, OTHER> *tmp = new SET<KEY,OTHER>[right-left+1]; 
    int i= left, j = mid, k = 0;
 
    while (i < mid && j <= right)                          //两表都未结束
	       if (a[i].key < a[j].key)     tmp[k++] = a[i++];
	       else tmp[k++] = a[j++];
 
    while ( i<mid )  tmp[k++] = a[i++];       //前半部分没有结束
    while ( j<=right )  tmp[k++] = a[j++];    //后半部分没有结束

    for (i=0, k = left; k<=right; ) a[k++] = tmp[i++];
    delete [] tmp;
}
template <class KEY, class OTHER>
void mergeSort(SET<KEY, OTHER> a[], int left, int right)
{
     int mid = (left+right)/2;
 
     if (left == right) return;
     mergeSort(a, left, mid);
     mergeSort(a, mid+1, right);
     merge(a,left,mid+1,right);
}
template <class KEY, class OTHER>
void mergeSort(SET<KEY, OTHER> a[], int size)
{
    mergeSort(a, 0, size-1);
}


template <class OTHER>
struct node {
    SET<int, OTHER> data;
    node *next;
 
    node() { next = NULL; }
    node(SET<int, OTHER> d): data(d)
          { next = NULL; }
};

template <class OTHER>
void bucketSort(node<OTHER> *&p)                // p是链表头
{
    node<OTHER> *bucket[10], *last[10], *tail ;
    int i, j, k, base = 1, max = 0, len = 0;
    for (tail = p; tail != NULL; tail = tail->next)        // 找最大键值
	  if (tail->data.key > max) max = tail->data.key;

    // 寻找最大键值的位数
    if (max == 0) len = 0;
    else while (max > 0) { ++len; max /= 10; }
 for (i = 1; i <= len; ++i) {                 // 执行len次的分配与重组
       for (j = 0; j <= 9; ++j) bucket[j] = last[j] = NULL;
       while (p != NULL) {                                  // 执行一次分配
  	      k = p->data.key / base % 10;
	      if (bucket[k] == NULL)  bucket[k] = last[k] = p;
	      else last[k] = last[k]->next = p;
	      p = p->next;
      }
      p = NULL;                                             // 重组后的链表头
      for (j = 0; j <= 9; ++j) {                                  // 执行重组
 	     if (bucket[j] == NULL) continue;
	     if (p == NULL)  p = bucket[j];
	     else tail->next = bucket[j];
	     tail = last[j];
      }
      tail->next = NULL;                   // 表尾置空
      base *= 10;                          // 为下一次分配做准备
    }
}






int main()
{
    cout << "Hello world!" << endl;
    return 0;
}
