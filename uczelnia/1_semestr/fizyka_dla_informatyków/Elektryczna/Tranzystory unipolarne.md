# Spis treści
- [Info](#Info)
- [Co to jest?](#Co%20to%20jest?)
- [Do czego służą?](#Do%20czego%20s%C5%82u%C5%BC%C4%85?)
- [Budowa](#Budowa)
- [Zasada działania](#Zasada%20dzia%C5%82ania)
- [Napięcie progowe](#Napi%C4%99cie%20progowe)
- [Najważniejsze parametry](#Najwa%C5%BCniejsze%20parametry)
- [Czego nie __robić__ przy MOSFETCIE?](#Czego%20nie%20__robi%C4%87__%20przy%20MOSFETCIE?)
- [Jak tego używać?](#Jak%20tego%20u%C5%BCywa%C4%87?)
- [Podsumowanie](#Podsumowanie)
# Info
[Źródło](https://forbot.pl/blog/kurs-elektroniki-ii-tranzystory-unipolarne-mosfet-id7960)
# Co to jest?
Tranzystory unipolarne to gigajne tranzystory (o wiele fajniejsze niż bipolarne). Wystepują w wielu odmianach, ale dla nas najistotniejsze są tranzystory __MOSFET__.
# Do czego służą?
Najczęściej są wykorzystywane do sterowania podzespołami, które pobierają duży prąd np. silnik.
Większość układów scalonych produkuję się wyłącznie z użyciem tranzystorów unipolarnych, występują np. w pamięciach. 
# Budowa
Zbudowany jest z:
- bramki(G) - metalizowana powłoka
- izolatora - oddziela bramkę od innych podzespołów
- podłoża(B) - półprzewodnik domieszkowany (cokolwiek by to miało znaczyć) przeciwnie do rodzaju kanału
- drenu(D)
- źródło(S)
Dwa ostatnie mają domieszkowanie przeciwne do podłoża na którym się znajdują.
![](../../../../media/Pasted%20image%2020251127192208.png)
(strasznie to skomplikowane…)
# Zasada działania
(Mówimy o tranzystorze NMOS z kanałem wzbogacanym)
Wyłączony tranzystor - dren-źródło nie płynie prąd, gdyż dren jest na wyższym potencjale, niż stykające się z nim podłoże, co polaryzuje utworzone tam złącze p-n zaporowo . To znaczy tylko tyle, że złącze przy podłożu jest spolaryzowane zaporowo, czyli nie przepuszcza prądu. 
![](../../../../media/Pasted%20image%2020251127192756.png)
Gdy dajemy napięcie dodatnie na bramkę, odpycha ona dodatnie cząsteczki na podłożu, przez co w okolicy bramki pozostają elektrony przyciągnięte z podłoża. Gdy warstwa elektronów zrobi się wystarczająco gruba, powstaje kanał pomiędzy drenem a źródłem. Voila, prąd płynie.

# Napięcie progowe
W rzeczywistości prąd dren-źródło płynie przy dowolnie niskich napięciach, ale podaje się napięcie progowe $U_{GSth}$, gdyż napięcie mniejsze od niego jest tak niskie, że nie warto nim sobie dupy zawracać. Producenci podają napięcie progowe przy ustalonym prądzie drenu. *Każdy producent podaje inne napięcie progowe*.
# Najważniejsze parametry 
- Rezystancja otwartego kanału - im mniejsza rezystancja tym lepiej, bo mniejsze są też straty mocy. Rezystancja ta wynika bezpośrednio z szerokości utworzonego kanału (czyli chyba grubości ściany elektronów powstającej przy bramce)
- Max napięcie bramka-źródło - przy za dużym napięciu przebijamy warstwę dielektryka pomiędzy bramką a źródłem!
- Max prąd drenu
- Max napięcie dren-źródło
- Max moc strat
# Czego nie __robić__ przy MOSFETCIE?
Nie dotykaj jak jesteś naelektryzowany! Działa to tak samo jak przy wrażliwych podzespołach komputerowych. 20v już może uszkodzić to małe gówienko, więc warto uważać. Należy przechowywać w opakowaniu antystatycznym. Przy lutowaniu warto zamontować jako ostatnie.
# Jak tego używać?
Dajemy napięcie na bramkę i wtedy pomiędzy drenem a źródłem płynie prąd. Przy bramce musimy dać rezystor ściągający do masy. Innymi słowy przy bramce trzeba walnąć rezystor podłączony bezpośrednio do masy.
# Podsumowanie
Tranzystory unipolarne (konkretnie MOSFET) to takie małe gówienka giga hiper super duper wrażliwe na prąd, więc trzeba uważać, służące głównie do przełączania rzeczy i sterowania dużym prądem, małymi napięciami. Mają kilka parametrów i ich budowa jest dość skomplikowana. Wykorzystuje się je głównie w jakichś tam silnikach, czy innych układach scalonych. 