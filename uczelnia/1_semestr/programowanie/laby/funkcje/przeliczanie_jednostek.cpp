// Napisz program, który pozwala użytkownikowi podać odległość w metrach, a
// następnie przelicza ją na cale, jardy, sążnie i mile morskie. Do przeliczania
// skorzystaj z osobnych funkcji zdefiniowanych przed main().
#include <iostream>
using namespace std;

void calculate_distance_from_meters(float distance_meters) {
  const double METERS_TO_INCHES = 39.3701;
  const double METERS_TO_YARDS = 1.09361;
  const double METERS_TO_FATHOMS = 0.546807;
  const double METERS_TO_NAUTICAL_MILES = 0.000539957;

  cout << "Odleglosc w calach: " << distance_meters * METERS_TO_INCHES << endl;
  cout << "Odleglosc w jardach: " << distance_meters * METERS_TO_YARDS << endl;
  cout << "Odleglosc w sazniach: " << distance_meters * METERS_TO_FATHOMS
       << endl;
  cout << "Odleglosc w milach morskich: "
       << distance_meters * METERS_TO_NAUTICAL_MILES << endl;
}

int main() {
  float distance;
  cout << "Podaj odleglosc w metrach: ";
  cin >> distance;
  calculate_distance_from_meters(distance);
  return 0;
}
