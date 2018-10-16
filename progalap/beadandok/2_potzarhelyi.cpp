#include <iostream>
#include <vector>
using namespace std;

int main()
{
    int n, r, cs1, cs2, ef;
    int darab =0;
    bool irhat;
    vector< int > lista;
    cin >> n;
    for (int i=0; i < n; i++) {
        cin >> r >> cs1 >> cs2 >> ef;
        if (r < 10) {
            irhat = false;
        } else {
            if (cs1 == 0 || cs2 == 0 || ef == 0) {
                irhat = true;
                darab++;
                lista.push_back(i+1);
            }
        }
        
    }
    cout << darab << endl;
    for (const auto& e : lista) {
        cout << e << " ";
    }
    cout << endl;
}
