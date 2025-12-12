// Napisz program, który będzie przechowywał tablicę zmiennych zdefiniowanych z
// wykorzystaniem struktury, która przechowuje dane osób. Uwzględnij w programie
// że:
// • Program definiuje strukturę Osoba z trzema polami: imie, wiek i wzrost.
// • Tworzy tablicę n obiektów typu Osoba (wartość n definiujemy w programie).
// • Dane n osób są podawane przez użytkownika z ‘klawiatury’.
// • Program następnie wyświetla wprowadzone dane w uporządkowany sposób.
// • Program zapisuje całą tablicę do pliku o nazwie dane_osob.txt.
// • Wykorzystaj funkcje własne w których umieść poszczególne zadania programu.
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
using namespace std;

struct Osoba {
  string imie;
  int wiek;
  float wzrost;
};

string wyswietl_osobe(const Osoba &osoba) {
  return "Imie: " + osoba.imie + "\nWiek: " + to_string(osoba.wiek) +
         "\nWzrost: " + to_string(osoba.wzrost);
}

void zapisz_do_pliku(const vector<Osoba> &osoby) {
  ofstream plik("dane_osoby.txt");
  if (!plik) {
    cerr << "Blad przy otwieraniu pliku" << endl;
    return;
  }

  for (const Osoba &osoba : osoby) {
    plik << wyswietl_osobe(osoba) << "\n\n";
  }
  plik.close();
}

int main() {
  int ilosc;
  vector<Osoba> osoby;
  cout << "Ile osob chcesz stworzyc: ";
  cin >> ilosc;

  for (int i = 0; i < ilosc; i++) {
    string imie;
    int wiek;
    float wzrost;
    cout << "Podaj imie: ";
    cin >> imie;
    cout << "Podaj wiek: ";
    cin >> wiek;
    cout << "Podaj wzrost: ";
    cin >> wzrost;

    Osoba osoba = {imie, wiek, wzrost};
    osoby.push_back(osoba);
  }

  for (Osoba osoba : osoby) {
    cout << wyswietl_osobe(osoba);
    cout << endl;
  }
  zapisz_do_pliku(osoby);
}
