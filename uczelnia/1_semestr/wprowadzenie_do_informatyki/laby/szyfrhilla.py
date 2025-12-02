import numpy as np

def letter_to_num(letter):
    return ord(letter.upper()) - ord('A')

def num_to_letter(num):
    return chr(num + ord('A'))


def cipher(text: str):
    k = np.array([[3, 3], [2, 5]])
    text_upper = text.upper().replace(' ', '')

    if len(text_upper) % 2 != 0:
        text_upper += "X"

    text_number = [letter_to_num(letter) for letter in text_upper]

    text_matrix = np.array(text_number).reshape(-1, 2).T

    c = (k @ text_matrix) % 26

    cipher_text = ''.join(num_to_letter(num) for num in c.T.flatten())

    return cipher_text

def decipher(text: str):
    k = np.array([[3, 3], [2, 5]])
    k_inv = np.linalg.inv(k)
    text_upper = text.upper().replace(' ', '')

    if len(text_upper) % 2 != 0:
        text_upper += "X"

    text_number = [letter_to_num(letter) for letter in text_upper]

    text_matrix = np.array(text_number).reshape(-1, 2).T

    c = (k_inv @ text_matrix) % 26

    cipher_text = ''.join(num_to_letter(num) for num in c.T.flatten())

    return cipher_text

if __name__ == "__main__":
    test_text = "Test"
    cipher = cipher(test_text)
    #decipher = decipher(cipher)
    print("Text: ", test_text)
    print("cipher: ", cipher)