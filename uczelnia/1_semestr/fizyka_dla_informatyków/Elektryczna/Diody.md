
# Poważna notatka
## Źródła
- https://forbot.pl/blog/kurs-elektroniki-diody-krzemowe-oraz-diody-swiecace-led-id4251

## Co to jest dioda?
Dioda to element elektroniczny, który przewodzi prąd elektryczny w jednym kierunku, czyli w sposób niesymetryczny. W drugim kierunku znacznie go blokuje lub zupełnie zapobiega jego przepływowi.

Symbol i oznaczenia na diodzie.
![](../../../../media/Pasted%20image%2020251113164637.png)
Prąd płynie od anody do katody (zgodnie z namalowaną strzałką), czyli od + do -. 

Dioda może znaleźć się w dwóch stanach:
- przewodzenia - gdy próbujemy wymusić przepływ prądu od anody do katody i dioda nie stawia nam oporu
- zaporowym - gdy próbujemy puścić prąd "pod prąd (hehe)", czyli w złym kierunku, od - do +

## Jak podłączyć diodę?
**Katodę** podłączamy do masy, czyli minusa. W słowie ka*t*doda jest t, a w t jest taki minusik.
Katoda to ta krótsza nóżka.
![](../../../../media/Pasted%20image%2020251113165511.png)
## Rodzaje diod
- [Diody krzemowa](#Diody%20krzemowa)
- [Diody świecące](#Diody%20świecące)
- [Diody Zenera](#Diody%20Zenera)
- [Dioda prostownicza](#Dioda%20prostownicza)
### Diody krzemowa
Diody __krzemowe__ jako swój półprzewodnik używają __krzemu__. Diody tego typu mają jedno zadanie - przepuszczać prąd tylko w jedną stronę. Prąd przepływający przed taką diodę traci część swojej energii, czyli spada napięcie.
> W praktyce objawia się to tym, że gdy podłączysz diodę szeregowo ze źródłem zasilania, to „za diodą” będzie niższe napięcie. Jest to cecha diod, o której warto pamiętać.
### Diody świecące (LED)
Diody LED (light-emmiting diode) zwane również dioda elektroluminescencyjnymi mają w swojej strukturze półprzewodnik, który pod wpływem napięcia świeci. Robi to samo co zwykła dioda i dodatkowo świeci. Warto pamiętać, że różne kolory światła (długości fali) wymagają różnego napięcia. Im krótsza fala tym większe napięcie jest potrzebne. **Zbyt dużym prądem można zabić diodę!**

Napięcie wymagane do poszczególnych kolorów:
![](../../../../media/Pasted%20image%2020251113165634.png)
### Diody Zenera
Służy do stabilizacji napięcia. Jest to specjalna dioda zaprojektowana do działania w kierunku zaporowym. Maksymalne napięcie na tej diodzie nazywamy napięciem Zenera. Gdy napięcie zaporowe osiągnie wartość zbliżoną do napięcia Zenera, dioda zaczyna przewodzić w kierunku przeciwnym, stabilizując tym samym napięcie. Działa jak stabilizator napięcia, utrzymując stałe napięcie przy zmianach prądu i napięcia wejściowego. 

#### Parametry diody Zenera
- Napięcie Zenera(V_Z) - napięcie przy którym dioda przewodzi w kierunku zaporowym
- Moc maksymalna(P_Z)
- Prąd Zenera(I_Z) - minimalny prąd przy którym dioda osiąga pełne napięcie Zenera i działa stabilnie
- Prąd maksymalny(I_ZM)
- Temperaturowy współczynnik napięcia Zenera - opisuje jak zmienia się napięcie Zenera w zależności od temperatury
- Rezystancja dynamiczna(R_Z) określa jak napięcie zmienia się przy zmianach prądu. Mniejsza rezystancja = lepsza stabilizacja
### Dioda prostownicza
Dioda prostownicza charakteryzuje się wysoką wytrzymałością na napięcie w kierunku
zaporowym oraz niskim spadkiem napięcia podczas przewodzenia, co umożliwia jej skuteczne
wykorzystanie jako element prostujący. 
## Jak to działa?
Dioda składa się z dwóch półprzewodników. Jeden ma nadmiar elektronów a drugi ich niedomiar (dziurę elektronową). Bez napięcia pomiędzy nimi powstaje bariera potencjału, co zapobiega przepływowi ładunków. Przez przyłożenie napięcia w kierunku przewodzenia redukujemy barierę potencjałów, co umożliwia przebieg prądu. Jeśli przyłożymy napięcie od dupy strony (od - do +), mówimy, że przykładamy napięcie w kierunku zaporowym, bariera potencjału wzrasta, co skutecznie blokuje przepływ prądu.

## Przebicie lawinowe
> Przebicie lawinowe to zjawisko zachodzące w półprzewodnikach (np. diodach) przy wysokim
napięciu w kierunku zaporowym, kiedy napięcie na złączu p-n przekracza określoną wartość (nazywaną
napięciem przebicia). W warunkach takich, elektrony i dziury (nośniki ładunku) w materiale są
przyspieszane przez silne pole elektryczne, co powoduje, że zderzają się z atomami krystalicznej
struktury półprzewodnika.
Każde takie zderzenie może wybić dodatkowe elektrony z atomów, tworząc nowe pary elektron-
dziura, co z kolei inicjuje dalsze zderzenia i powstanie kolejnych par. Proces ten przybiera formę lawiny,
ponieważ każde zderzenie generuje kolejne nośniki, które również przyspieszają, zwiększając przepływ
prądu.
Przebicie lawinowe pozwala diodom, takim jak diody Zenera, przewodzić prąd w kierunku
zaporowym po przekroczeniu napięcia przebicia, jednak w tradycyjnych diodach przebicie to może
prowadzić do uszkodzenia, jeśli prąd nie jest ograniczony przez odpowiedni rezystor lub inne elementy
obwodu.
# Notatka z wykładu
Diody są super.

Diody ogólnego przeznaczenia (50Hz, maks do kilku kHz)

Diody szybkie (czas przełączenia < 1us) - zasilacze impulsowe

Anoda do plusa, katoda od minusa i wtedy dioda przewodzi.

---K<|--- symbol diody
*K*atoda

Mamy tutaj diody przewlekane i tym będziemy się bawić na labolatoriach.

Bardzo niewielki prąd wsteczny jest niebezpieczny.

Przebicie złącza coś tam zjawisko lawinowe i to zjawisko lawinowe polega na tym, że elektrony wzajemnie się pobudzają coś tam i występuje lawinowy przepływ. Jeśli chodzi o to napięcie przebicia, to na wykresie jest pare voltów tak? Coś tam jednego kilovolta. Tutaj proszę państwa mamy przewodzenie naszej diody, jak działa. Jeśli mamy diodę spolaryzowaną dodatnią, to mamy plus w tym miejscu. Jeśli mamy plus w tym miejscu to elektrony płyną tu, w tym miejscu. Nasza dioda przewodzi w tym czasie. Jeśli mamy ujemną część sygnału, to w tym momencie, proszę państwa, dioda nasza nie przewodzi. Jeżeli do takiego układu mamy układ z diodą, mamy diodę prostowniczą, jeżeli do tego układu dodamy sobie kondensator i mamy nasze źródło zasilania, to, proszę państwa, ten nasz sygnał jednopołówkowy zostanie przez kondensator wygładzony w pewien sposób. Ładował i opadał, tak? Czyli będziemy mieli sytuację taką, że będzie występowała pulsacja, tak? Ale ten sygnał będzie występował coś tam. Jeżeli weźmiemy sobie układ mostkowy prostowniczy to tutaj jest pokazane jak działa układ mostkowy prostowniczy. Jeżeli mamy tutaj plus to ta dioda przewodzi i ta dioda przewodzi. Ta i ta. Tędy, tędy wraca. Tutaj wracamy do masy. Jak jest dodatni z tej strony to idziemy tędy, znowuż tu i tu wracamy do masy, tak? Czyli, żeby prąd płynął obwód musi być zamknięty. Oczywiście proszę państwa jeżeli narysujemy sobie taki układ jak tu, to ja narysuje wykres i weźmiemy wypołówkowanie dwupołówkowe to prosze państwa, ten kondesensator który się naładuje, będzie niewiele opóźnień, czyli jakość sygnału coś tam, tak?
Układy stosuje sie mostkownicze, one są bardzo często zintegrowane te cztery diody już w formie jednego układu, tak? Który ma 4 wyprowadzenia, 2 wejścia 2 wyjścia… Idziemy dalej!


Diody uniwersalne coś tam tralala.

Diody stabilizacyjne:
- przebicie lawinowe (napięcia powyżej 7v)
- przebicie zenera (dla niskich napięć, do 5v)

Zjawisko Zenera - elektrony są w stanie przejść przez barierę, ze względu na cienkość tej bariery.

Na diodzie zenera mamy napięcie UZenerea, czyli Uout = U2 = SV

Liczenia diod stabilizacyjnych trzeba umieć na kolokwium!!!

Diody impulsowe.