// Napisz program, który przyjmuje od użytkownika dwie liczby całkowite
// określające zakres, a następnie znajduje i wyświetla wszystkie liczby
// pierwsze w tym zakresie. Do sprawdzania, czy liczba jest pierwsza, użyj
// osobnej funkcji. Do znajdywania tych liczb drugiej funkcji. W main() ma być
// jedynie wczytanie i wyświetlenie danych
#include <iostream>

using namespace std;

bool is_prime(int number) {
  switch (number) {
  case 1:
    return false;
  case 2:
    return true;
  default: {
    if (number % 2 == 0) {
      return false;
    }
    for (int i = 3; i * i <= number; i += 2) {
      if (number % i == 0) {
        return false;
      }
    }
  }
  }
  return true;
}

void find_primes(int begin, int end) {
  if (begin > end) {
    cout << "Poczatek zakresu nie moze byc mniejszy niz jego koniec! Co ty "
            "sobie myslisz?";
    exit(1);
  }
  for (int i = begin; i < end; i++) {
    if (is_prime(i)) {
      cout << "Liczba " << i << " jest liczba pierwsza!" << endl;
    }
  }
}

int main() {
  int begin, end;
  cout << "Podaj poczatek zakresu i koniec zakresu: ";
  cin >> begin;
  cin >> end;
  find_primes(begin, end);

  return 0;
}
