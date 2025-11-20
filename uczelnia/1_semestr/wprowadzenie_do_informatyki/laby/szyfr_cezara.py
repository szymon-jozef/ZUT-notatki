def cypher(text, offset):
    n_text = ""
    for char in text:
        if char.isalpha() and char.islower():
            pos = ((ord(char) - ord('a') + offset) % 26) + ord('a')
            n_text += chr(pos)
        if char.isalpha() and char.isupper():
            pos = ((ord(char) - ord('A') + offset) % 26) + ord('A')
            n_text += chr(pos)
    return n_text

def decypher(text, offset):
    n_text = ""
    for char in text:
        if char.isalpha() and char.islower():
            pos = ((ord(char) - ord('a') - offset) % 26) + ord('a')
            n_text += chr(pos)
        if char.isalpha() and char.isupper():
            pos = ((ord(char) - ord('A') - offset) % 26) + ord('A')
            n_text += chr(pos)
    return n_text

def force_decypher(text):
    n_text = ""
    print("Możliwe wyniki: ")
    for offset in range(1, 26):
        print("Przesunięcie", offset, ":")
        for char in text:
            if char.isalpha() and char.islower():
                pos = ((ord(char) - ord('a') + offset) % 26) + ord('a')
                n_text += chr(pos)
            if char.isalpha() and char.isupper():
                pos = ((ord(char) - ord('A') + offset) % 26) + ord('A')
                n_text += chr(pos)
        print(n_text)
        n_text = ""
        print("------")

if __name__ == "__main__":
    tryb = input("Wybierz tryb:\ns - szyfrowanie\nd - deszyfrowanie\nf - siłowe odszyfrowanie\n")
    offset = 3
    match tryb:
        case "s":
            text = input("Podaj słowo do zaszyfrowania: ")
            print("Słowo przed zaszyfrowaniem: ", text)
            print("Aktualne przesunięcie: ", offset)
            print("Zaszyfrowane słowo: ", cypher(text, offset))
        case "d":
            text = input("Podaj słowo do odszyfrowania: ")
            print("Słowo przed odszyfrowaniem: ", text)
            print("Aktualne przesunięcie: ", offset)
            print("Odszyfrowane słowo: ", decypher(text, offset))
        case "f":
            text = input("Podaj słowo do odszyfrowania: ")
            force_decypher(text)
        case _:
            print("Niepoprawny wybór!")
