# Spis treści
- [[#Potęgowanie|Potęgowanie]]
	- [[#Potęgowanie#Metoda|Metoda]]
	- [[#Potęgowanie#Trudność|Trudność]]
	- [[#Potęgowanie#Mnożenie/dzielenie potęgowanych liczb zespolonych|Mnożenie/dzielenie potęgowanych liczb zespolonych]]
- [[#Pierwiastkowanie|Pierwiastkowanie]]
	- [[#Pierwiastkowanie#Metoda|Metoda]]
- [[#Pierwiastki kwadratowe|Pierwiastki kwadratowe]]
	- [[#Pierwiastki kwadratowe#Czym się różnią od zwykłych?|Czym się różnią od zwykłych?]]
	- [[#Pierwiastki kwadratowe#Jak to liczyć?|Jak to liczyć?]]
- [[#Równania|Równania]]
	- [[#Równania#Metoda|Metoda]]
- [[#Równania wielomianowe|Równania wielomianowe]]
	- [[#Równania wielomianowe#Metoda|Metoda]]
- [[#Dzielenie wielomianów|Dzielenie wielomianów]]
	- [[#Dzielenie wielomianów#Schemat Hornera|Schemat Hornera]]
	- [[#Dzielenie wielomianów#Dzielenie pisemne|Dzielenie pisemne]]
- [[#Rozwiązywanie nierówności|Rozwiązywanie nierówności]]
		- [[#Dzielenie pisemne#Rysowanie wykresów wielomianów|Rysowanie wykresów wielomianów]]
# Liczby zespolone
## Potęgowanie
### Metoda
Potęgowanie liczb zespolonych jest dość proste. Wygląda mniej więcej tak:

$(a + ib)^n = |z|^n \big(\cos(n\varphi) + i \sin(n\varphi)\big)$

### Trudność
Jedyne, co może sprawiać trudność, to przerabianie kąta \(\varphi\) na radiany oraz stosowanie wzorów redukcyjnych. Z wprawą staje się to jednak łatwiejsze.  

Przykład poprawnej redukcji kąta:

$cos\frac{5\pi}{6} = \cos\Big(\pi - \frac{\pi}{6}\Big) = -\cos\frac{\pi}{6} = -\frac{\sqrt{3}}{2}.$

Najważniejsze (chyba) wzory redukcyjne przy takich przeliczeniach:
![](../../../media/Pasted%20image%2020251116121244.png)

### Mnożenie/dzielenie potęgowanych liczb zespolonych
Wygląda strasznie, ale nie jest wiele bardziej skomplikowane. Korzystamy z właściwości funkcji trygonometrycznych:

$z_1^n \cdot z_2^m = |z_1|^n \cdot |z_2|^m \Big(\cos(n\varphi_1 + m\varphi_2) + i \sin(n\varphi_1 + m\varphi_2)\Big)$


Z dzieleniem jest tak samo, tylko zamiast dodawać kąty, odejmujemy je, a moduły dzielimy:

$\frac{z_1^n}{z_2^m} = \frac{|z_1|^n}{|z_2|^m} \Big(\cos(n\varphi_1 - m\varphi_2) + i \sin(n\varphi_1 - m\varphi_2)\Big)$

## Pierwiastkowanie
### Metoda
Tutaj stosujemy podobną metodę, ale zamiast mnożyć przez \(n\) w argumentach, dzielimy przez stopień pierwiastka i pamiętamy, że pierwiastków jest kilka (w zależności od stopnia).  

$\sqrt[n]{r(\cos\varphi + i\sin\varphi)} = \sqrt[n]{r} \Big(\cos\frac{\varphi+2k\pi}{n} + i \sin\frac{\varphi+2k\pi}{n}\Big), \quad k=0,1,\dots,n-1$

Tak bardziej po ludzku: 
- Rozwiązań pierwiastka w liczbach zespolonych jest tyle jaki jest stopień pierwiastka. Dla $sqrt(z)^6$ będzie 6 rozwiązań.
- To znaczy, że będziemy musieli policzyć 6 różnych wyników.
- Rozwiązania "indexujemy" jak tablice w programowaniu. Od 0 do n-1.
- Czyli liczymy sobie $k_0, k_1, k_2, ..., k_{n-1}$ i w miejsce k podstawiamy rozwiązanie które liczymy.
Dość prosta sprawa!

## Pierwiastki kwadratowe
### Czym się różnią od zwykłych?
Nie liczymy tego zwykłym wzorem (nie wiem czemu, nie chce mi sie sprawdzać).
### Jak to liczyć?
Tworzymy sobie prosty układ równań, który zawsze będzie wyglądał tak samo.
$$ \begin{cases}
a^2-b^2 &= \Re(z) \\
2ab &= \Im(z) \\
a^2 + b^2 &= |z|
\end{cases}
$$
Jego budowa wynika bezpośrednio z właściwości liczb zespolonych.
$z = a + ib \quad \implies \quad z^2 = (a+ib)^2 = a^2 - b^2 + 2abi$

Po prawej stronie układu podstawiamy sobie liczby.
Odejmujemy 3 od 1, wtedy mamy b.
a podstawiamy do drugiego równania i liczymy na jego podstawie a.
a może być wtedy na +/-, w zależności od znaku b. Dlatego mamy zestaw 2 rozwiązań.
W liczbach zespolonych jest tyle rozwiązań jaki jest stopień pierwiastka, więc wszystko się zgadza.
## Równania
### Metoda
Równania to są tak naprawdę zwykłe funkcje kwadratowe/wielomiany, z tą różnicą, że teraz liczymy w zbiorze liczb zespolonych. Co to znaczy? To znaczy, że możemy policzyć wynik nawet, gdy $\Delta<0$ !
Cała logika operacji na liczbach zespolonych pozostaje taka sama. 

## Równania wielomianowe
### Metoda
Tutaj musimy przekształcić to do formy $z^n = k$ a potem przedstawić k w formie trygonometrycznej i spierwiastkować do stopnia n.

Albo policzyć z funkcji kwadratowej.

# Wielomiany
## Dzielenie wielomianów
### Schemat Hornera
[matemaks](https://www.matemaks.pl/schemat-hornera.html)
![](../../../media/Pasted%20image%2020251116135721.png)

### Dzielenie pisemne
[matemaks](https://www.matemaks.pl/dzielenie-wielomianow.html)
No generalnie działa to tak samo jak dzielenie pisemne zwykłych liczb.

## Rozwiązywanie nierówności
Żeby rozwiązać nierówność trzeba narysować wykres funkcji i zobaczyć na jakich przedziałach spełniony jest warunek.

#### Rysowanie wykresów wielomianów
Żeby narysować wykres wielomianu:
- Musi być on przedstawiony w postaci iloczynowej 
- Muszą być wyznaczone jego miejsca zerowe. 
- Zaczynamy od prawej strony
- Jeżeli współczynnik kierunkowy jest ujemny to zaczynamy od dołu, jeśli dodatni do od góry
- Rysujemy linię do najbliższego miejsca zerowego
- Jeśli potęga przy tym miejscu zerowym jest parzysta to wykres się odbija i nie przebija osi y
- Jeśli potęga jest nieparzysta to wykres przebija oś y

Tym sposobem można narysować wykres wielomianu i rozwiązać dzięki niemu nierówność.