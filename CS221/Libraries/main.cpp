#include <iostream>

#include "linkQueue.h"
#include "seqQueue.h"
#include "linkStack.h"
#include "seqStack.h"
#include "sLinkList.h"
#include "binaryTree.h"
#include "heap.h"
#include "priorityqueue.h"
using namespace std;

int main()
{

    binaryTree<int> a;
    a.createTree(1);
    a.preOrder();
    a.postOrder();
    a.levelOrder();
    a.midOrder();
    return 0;
}
