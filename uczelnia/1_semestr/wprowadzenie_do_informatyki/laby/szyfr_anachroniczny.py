from math import gcd

def cipher(text, a = 5, b = 8):
    text = text.replace(" ", "").upper()
    cipher_text = ''
    for letter in text:
        x = ord(letter) - ord('A')
        y = (a * x + b) % 26
        encrypter_letter = chr(y + ord('A'))
        cipher_text += encrypter_letter

    return cipher_text

def decipher(text, a = 5, b = 8):
    text = text.replace(" ", "").upper()
    decipher_text = ''
    for letter in text:
        a_inv = 0
        found = False
        for i in range(1, 26):
            if (a * i) % 26 == 1:
                found = True
                a_inv = i
                break
        if not found:
            print("Nie znaleziono odwrotności a modulo 26. Zamykanie programu...")
            exit(1)

        y = ord(letter) - ord('A')
        x = (a_inv * (y - b)) % 26
        plain_letter = chr(x + ord('A'))

        decipher_text += plain_letter
    return decipher_text

def validate_key(a):
    if gcd(a, 26) != 1:
        print("Niepoprawny klucz - brak odwrotności modulo 26")
        return
    print("Poprawny klucz!")

if __name__ == '__main__':
    text = input("Podaj tekst do zaszyfrowania: ")
    print("Tekst przed szyfrowaniem: ", text)
    cipher = cipher(text)
    print("Tekst po zaszyfrowaniu: ", cipher)
    decipher = decipher(cipher)
    print("Tekst po odszyfrowaniu: ", decipher)
    a = int(input("Podaj wartości klucza a: "))
    validate_key(a)
