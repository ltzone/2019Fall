#include <iostream>

using namespace std;

int main()
{
    struct node
    {
        int inTime;
        int outTime;
    };

    int rows;
    cin >> rows;

    node* data = new node [rows];

    for (int i=0;i<rows;++i)
    {
        cin >> data[i].inTime >> data[i].outTime;
    }

    node tmp;
    for (int i=1;i<rows;++i)
    {
        tmp = data[i];
        int j;
        for (j=i-1;tmp.inTime<data[j].inTime&&j>=0;--j)
            data[j+1] = data[j];
        data[j+1]=tmp;
    }

    int startTime;
    int currentTime = 0;
    int oneTime = 0;
    int zeroTime = 0;

    for (int i=0;i<rows;++i)
    {
        startTime = data[i].inTime;
        currentTime = data[i].outTime;
        while (currentTime>=data[i+1].inTime && i+1<rows)
        {
            if (data[i+1].outTime > currentTime) currentTime = data[i+1].outTime;
            ++i;
        }
        if (currentTime-startTime>oneTime) oneTime = currentTime - startTime;
    }

    startTime = data[0].outTime;

    for (int i=0;i<rows-1;++i)
    {
        if (data[i].outTime > startTime) startTime = data[i].outTime;
        if (data[i+1].inTime - startTime > zeroTime) zeroTime = data[i+1].inTime - startTime;
    }

    cout << oneTime << ' ' << zeroTime;


    return 0;
}
