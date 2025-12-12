// Napisz program, który poprosi użytkownika o podanie zdania. Program powinien
// odwrócić kolejność słów, ale same słowa pozostaną niezmienione. Uwzględnij że
// w
// zdaniu mogą wystąpić spacje na początku, na końcu a także po kilka spacji
// pomiędzy wyrazami.

#include <iostream>
#include <string>

using namespace std;

string reverse_sentence(string sentence) {
  size_t space_pos = 0;
  string reversed_sentence = "";

  while ((space_pos = sentence.find_last_of(" ")) != string::npos) {
    if (space_pos == sentence.length() - 1) {
      sentence.erase(sentence.length() - 1, 1);
      continue;
    }
    reversed_sentence += sentence.substr(space_pos + 1) + " ";
    sentence.erase(space_pos);
  }

  return reversed_sentence + sentence;
}

int main() {
  cout << "Podaj swoje zdanie:" << endl;
  string sentence, reversed_sentence;
  getline(cin, sentence);
  reversed_sentence = reverse_sentence(sentence);
  cout << "Twoje odwrocone zdanie: " << endl << reversed_sentence;
}
