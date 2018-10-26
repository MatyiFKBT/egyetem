#include <iostream>
#include <vector>
using namespace std;
void idojaras() {
  int napok,min,max;
  int elozomin=0, elozomax=0;
  int seged = 0;
  int elso,masodik,harmadik;
  int negyedik = 0;
  vector <int> fagyolvad;
  cin >> napok;
  
  for (int i=0; i<napok; i++) {
    cin >> min >> max;
    int tav = abs(max-min);
    if (max<elozomin) harmadik = i+1;
    if (min<=0 && max>0) {
      negyedik++;
      fagyolvad.push_back(i+1);
    }
    if (tav>seged) {
      seged = tav;
      masodik = i+1;
    }
    if (min<=0) elso++;
    elozomax = max;
    elozomin = min;
  }
  cout << "#" << endl;
  cout << elso << endl;
  cout << "#" << endl;
  cout << masodik << endl;
  cout << "#" << endl;
  cout << harmadik << endl;
  cout << "#" << endl;
  cout << negyedik << " ";
  for (int i =0; i<fagyolvad.size(); i++) {
    cout << fagyolvad[i] << " ";
  }
}
int main() {
  idojaras();
  return 0;
}