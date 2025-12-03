import numpy as np


def letter_to_num(letter):
    return ord(letter.upper()) - ord('A')


def num_to_letter(num):
    return chr(num + ord('A'))


def matrix_mod_inv(key):
    det = int(round(np.linalg.det(key)))
    det_mod = det % 26
    det_inv = pow(det_mod, -1, 26)

    adj = np.array([[key[1, 1], -key[0, 1]],
                    [-key[1, 0],  key[0, 0]]])

    return (det_inv * adj) % 26


def cipher(text: str, key: int):
    text_upper = text.upper().replace(' ', '')

    if not validate_key(key):
        print("Macierz klucz nie jest odwracalna, wybierz inną")
        exit(1)

    if len(text_upper) % 2 != 0:
        text_upper += "X"

    nums = [letter_to_num(letter) for letter in text_upper]
    mat = np.array(nums).reshape(-1, 2).T

    c = (key @ mat) % 26
    return "".join(num_to_letter(n) for n in c.T.flatten())


def decipher(text: str, key: int):
    text_upper = text.upper().replace(' ', '')
    if not validate_key(key):
        print("Macierz klucz nie jest odwracalna, wybierz inną")
        exit(1)

    key_inv = matrix_mod_inv(key)

    if len(text_upper) % 2 != 0:
        text_upper += "X"

    nums = [letter_to_num(letter) for letter in text_upper]
    mat = np.array(nums).reshape(-1, 2).T

    p = (key_inv @ mat) % 26
    return "".join(num_to_letter(n) for n in p.T.flatten())


def validate_key(key) -> bool:
    key = np.asarray(key)

    if key.shape != (2, 2):
        return False

    if not np.all((0 <= key) & (key < 26)):
        return False

    det = int(round(np.linalg.det(key)))
    det_mod = det % 26

    return np.gcd(det_mod, 26) == 1


if __name__ == "__main__":
    key = np.array([[3, 3],
                    [2, 5]])

    test_text = "TEST"
    ciphered_text = cipher(test_text, key)
    deciphered_text = decipher(ciphered_text, key)
    print("Text:", test_text)
    print("Cipher:", ciphered_text)
    print("Decipher:", deciphered_text)
