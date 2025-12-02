# Algorytm
## Co to jest algorytm
 Algorytm - dokładny przepis podający sposób rozwiązania określonego zadania (algorytmicznego) w skończonej liczbie kolejnych kroków; zestaw poleceń odnoszących się do pewnych obiektów, ze wskazaniem porządku, w jakim mają być te polecenia realizowane.

W kontekście komputera - zestaw kroków, które maszyna ma wykonać, by osiągnąć konkretny cel.
![](../../../media/Pasted%20image%2020251202145825.png)

## Istotne metody opisu algorytmu
- Formalizm matematyczny
- Pseudokod
- Schemat blokowy

### Schemat blokowy
[źródło grafiki](https://www.korepetycjezinformatyki.pl/schemat-blokowy/)
![](../../../media/Pasted%20image%2020251202163629.png)

# Algorytm sortowania
## Sortowanie bąbelkowe
![](../../../media/Pasted%20image%2020251202151437.png)
Porównujemy po kolei wszystkie kolejne party w tablicy i zamieniamy miejscami.
## Sortowanie przez wybieranie
![](../../../media/Pasted%20image%2020251202151233.png)
Wybieramy z tablicy najmniejsze elementy i wstawiamy je na początek.
(TE ALGORYTMY BYŁYBY O WIELE BARDZIEJ ZROZUMIAŁE GDYBY ZAMIAST LOSOWYCH LITEREK DAWAŁ JAKIEŚ SENSOWNE SŁOWA JAKO NAZWY ZMIENNYCH)
## Sortowanie przez wstawianie
![](../../../media/Pasted%20image%2020251202151416.png)
Przechodzimy przez całą tablicę i porównujemy kolejne elementy. Coś jak bubble sort, ale zamiast przechodzić parami to porównujemy, aż nie będzie mniejszego elementu.

# Złożoność obliczeniowa algorytmów
## Źródła
- https://www.samouczekprogramisty.pl/podstawy-zlozonosci-obliczeniowej/
- https://cpp0x.pl/kursy/Teoria-w-Informatyce/424

## Jak to działa
Każda operacja to jedna jednostka czasu.

Definicja Złożoność czasowa to liczba operacji dominujących (podstawowych) wykonanych przez algorytm w czasie jego realizacji, wyrażona jako funkcja rozmiaru danych.

## Typy
### Optymistyczna
Najbardziej korzystny przypadek: wszystkie pętle wykonują się max 1 raz.
### Pesymistyczna
Najmniej korzystny przypadek: wszystkie pętle wykonują się max ilość razy.
### Średnia
Chuj wie tak szczerze.

Gemini wjebał mi to:
> **Średnia (Average Case)** To najbardziej realistyczny scenariusz. Zakładamy, że dane są **losowe** (nie są ułożone specjalnie złośliwie, ani idealnie).
	- **Jak to liczyć "na chłopski rozum":** Sumujesz liczbę kroków dla każdego możliwego ułożenia danych i dzielisz przez liczbę tych ułożeń.
	- **Przykład:** W sortowaniu szybkim (Quicksort) pesymistycznie masz O(n2) (jak masz pecha), ale średnio (w 99% przypadków) masz O(nlogn). Dlatego używamy go w praktyce, mimo że teoretycznie może być wolny.
## Pojebane notacje
Mamy notacje:
- Duże O - oszacowanie z góry. Pomijamy wszelkiego rodzaju stałe
- Ω (omega) - oszacowanie z dołu. 
- Θ (theta) - używamy, gdy algorytm zachowuje się tak samo przy O i omega, czyli oszacowania z góry i z dołu się spotykają.
## Rzędy złożoności obliczeniowej
- O(1) - złożoność stała, niezależna od danych wejściowych.
- O(n) - złożoność liniowa. Czas rozwiązania jest wprost proporcjonalny do wielkości danych wejściowych.
- O(log(n)) - złożoność logarytmiczna. Złożoność zależy od wyniku algorytmu. Rozwiązania, które dzielą problem na mniejsze części przeważnie są zależne od logarytmu wielkości danych wejściowych.
- O(n * log(n)) złożoność logarytmiczno-liniowa. Złożoność zależy od wyniku logarytmu i jest wprost proporcjonalna.
- O($n^2$) - złożoność kwadratowa, czyli specyficzny przypadek złożoności wielomianowej. Przeważnie występuje przy zagnieżdżonych pętlach. Chujowa jest generalnie, bo wymaga dużo obliczeń, dlatego nie zagnieżdżamy pętl. Chyba, że taką na szyi, to możesz ją sobie zagnieździć.
- O($n^x$) - złożoność wielomianowa, czyli jeszcze chujowsza niż kwadratowa.
- O($x^n$) - złożoność wykładnicza. Duża fhuj.
- O(n!) - złożoność typu silnia. Fhujowiej dużo.

## WAŻNE, czyli jak obliczać to gówno
- Sprawdzamy o co pytają, czyli jak rośnie liczba jakiej operacji.
- Podstawiamy sobie jakieś ładne dane do optymistycznego i chujowe do pesymistycznego.
- Możemy sobie rozpisać kolejne iteracje.
- Sprawdzamy ile razy wywołała się ta operacja, która była w pytaniu.
Essa essunia.
# Algorytmy rekurencyjne
Rekurencja polega na wywoływaniu funkcji przez samą siebie ze zmienionym argumentami. Każda funkcja rekurencyjna potrzebuje warunku zakończenia, czyli jakiegoś ifa, który w pewnym momencie na pewno będzie prawdziwy i który przerwie pętle wywołań.
## Przerabianie iteracji na rekurencję
Znajdujemy warunek końca, sprawdzamy go, a potem wywołujemy siebie samą ze zmienionym argumentem. Np.
```
// iteracyjnie
Euklides(a, b) {
	while (b != a) { // <-- warunek końca
		if (b > a) {
			 b = b - a // <-- "zmiana argumentu"
		} else {
			a = a - b	// <-- "zmiana argumentu"
		}	
	}
	return b
}

// rekurencyjnie
Euklides(a, b) {
	if (b == a) { // <-- warunek końca
	 return b
	}
	
	if (b > a) {
		return Euklides(a, b - a) // <-- zmiana argumentu
	} else {
		return Euklides(a - b, b) // <-- zmiana argumentu
	}
}
```
