#include <iostream>

using namespace std;

int main()
{
    int innum;
    cin >> innum;
    int rail[100];
    for (int i=0;i<innum;++i) cin >> rail[i];
    bool valid = true;
    bool previnstack = false;
    int head = rail[0];
    for (int j=1;j<innum;++j)
    {
        if (rail[j]<rail[j-1] && !(previnstack))
            {previnstack = true; head = rail[j-1];}
        if (rail[j]>rail[j-1] && (previnstack))
            {previnstack = false; if (rail[j]<head) {valid=false;break;} }
    }
    if (valid) cout << "Yes";
    else cout << "No";
    return 0;
}
