#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
using namespace std;
int main() {
  int n,m;
  vector <int> ettol;
  vector <int> eddig;
  vector <string> nev;
  
  cin >> n;
  for (int i = 0; i < n; i++) { // N szamra lefut a ciklus 
    int ett,edd;
    string neve;
    cin >> ett >> edd;
    getline(cin, neve);
    neve = neve.substr(1);
    ettol.push_back(ett);
    eddig.push_back(edd);
    nev.push_back(neve);
  }
  //cout << " " << endl;
  //for (int i=0;i<nev.size();i++) cout << nev[i] << ettol[i] << "-" <<eddig[i]<<endl;
  
  string uralkodo, gyermeke;
  cin >> m;
  getline(cin,uralkodo);
  int nincs=0;
  vector <string> uralkodofiuval;
  string elozo; //elozo sikertelen találat
  for (int i=1; i<=m; i++) {
    getline(cin,uralkodo);
    getline(cin,gyermeke);
    //cout << uralkodo << " gyermeke " << gyermeke; //ez kiírja hogy ki kinek a gyermeke
    if ( find(nev.begin(), nev.end(), gyermeke) != nev.end())
    {
      uralkodofiuval.push_back(uralkodo);
      //cout << "\t\ttalálat" <<endl;
    } else {
      if (find(uralkodofiuval.begin(), uralkodofiuval.end(), uralkodo) != uralkodofiuval.end())
      {
        //ha tudjuk hogy van fia, aki uralkodó lett
        if (uralkodo==elozo){
          elozo="Siker";
        } else nincs++;
      } else {
        elozo=uralkodo;
      }
      cout << endl;
    }
  }
  cout << nincs <<endl;
  
  //cout << endl;
  //cout << "meret " << nev.size() << endl;
}
