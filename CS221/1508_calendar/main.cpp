#include <iostream>

using namespace std;

bool isleap(int year)
{
    return (year%4 ==0 && year%100 !=0 || year%400 ==0);
}

int leapyear_between(int year)
{
    int sum = 0;
    for (int i=1850;i<year;++i)
        if (isleap(i)) ++sum;
    return sum;
}

int fstday_of(int y, int m, int* month, int* monthleap)
{

    if (isleap(y)) return (1 + (365*(y-1850)+leapyear_between(y))%7 + monthleap[m-1]%7);
    else return (1 + (365*(y-1850)+leapyear_between(y))%7 + month[m-1]%7);
}

int main()
{
    int a,b,c,y1,y2,n;
    cin >> a >> b >> c >> y1 >> y2;
    int month[13] = {0,31,59,90,120,151,181,212,243,273,304,334,365};
    int monthleap[13] = {0,31,60,91,121,152,182,213,244,274,305,335,366};
    for (int i=y1;i<=y2;++i)
    {
        n = fstday_of(i,a,month,monthleap);
        if (c <= n) n = 7*b + c - n;
        else n = 7*b - 7 + c - n;
        if (isleap(i))
        {
            if (n>monthleap[a]-monthleap[a-1]) cout << "none" << endl;
            else
            { cout << i << "/";
              if (a<10) cout <<"0";
              cout << a << "/";
              if (n<10) cout <<"0";
              cout << n << endl;
            }
        }
        else
        {
            if (n>month[a]-month[a-1]) cout << "none" << endl;
            else
            { cout << i << "/";
              if (a<10) cout <<"0";
              cout << a << "/";
              if (n<10) cout <<"0";
              cout << n << endl;
            }
        }
    }

    return 0;
}

