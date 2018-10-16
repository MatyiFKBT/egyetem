#include <iostream>
//kissé szeles napok feladat
/*
input

10 10 3
50
40
0
5
0
80
70
90
10
120

output = 1
*/
using namespace std;
int main()
{
    int n, m, k; // napok, szélsebesség, versenynyapok
    cin>>n>>m>>k; //  bekérés
    int napok = 0;
    for (int i = 0; i < n; i++)
    {
        int szelfuvas;
        cin >> szelfuvas;
        if (szelfuvas < m && szelfuvas > 0) {
          ++napok;
        }
    }
    cout << napok;
    return 0;
}
