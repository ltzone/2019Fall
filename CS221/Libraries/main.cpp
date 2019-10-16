#include <iostream>

#include "linkQueue.h"
#include "seqQueue.h"
#include "linkStack.h"
#include "seqStack.h"
#include "sLinkList.h"
using namespace std;

int main()
{

    sLinkList<int> b;
    b.insert(0,4);
    b.insert(0,2);
    cout << b.visit(0);
    return 0;
}
