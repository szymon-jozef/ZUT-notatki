Spis treści

- [Diody](#Diody)
	- [Źródła](#%C5%B9r%C3%B3d%C5%82a)
	- [Co to jest dioda?](#Co%20to%20jest%20dioda?)
	- [Jak podłączyć diodę?](#Jak%20pod%C5%82%C4%85czy%C4%87%20diod%C4%99?)
	- [Rodzaje diod](#Rodzaje%20diod)
		- [Diody krzemowa](#Diody%20krzemowa)
		- [Diody świecące (LED)](#Diody%20%C5%9Bwiec%C4%85ce%20(LED))
		- [Diody Zenera](#Diody%20Zenera)
			- [Parametry diody Zenera](#Parametry%20diody%20Zenera)
		- [Dioda prostownicza](#Dioda%20prostownicza)
	- [Jak to działa?](#Jak%20to%20dzia%C5%82a?)
	- [Przebicie lawinowe](#Przebicie%20lawinowe)
- [Tranzystory bipolarne (BJT)](#Tranzystory%20bipolarne%20(BJT))
	- [Co to](#Co%20to)
	- [Budowa](#Budowa)
	- [Podział](#Podzia%C5%82)
	- [Działanie](#Dzia%C5%82anie)
	- [Najważniejsze parametry tranzystorów](#Najwa%C5%BCniejsze%20parametry%20tranzystor%C3%B3w)
	- [Stany pracy tranzystorów bipolarnych](#Stany%20pracy%20tranzystor%C3%B3w%20bipolarnych)
	- [Zastosowanie tranzystorów](#Zastosowanie%20tranzystor%C3%B3w)
	- [Podsumowanie](#Podsumowanie)
		- [Tryby pracy](#Tryby%20pracy)

# Diody
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
# Tranzystory bipolarne (BJT)
[źródło](botland.com.pl/blog/tranzystor-wszystko-co-musisz-wiedziec/)
https://www.youtube.com/watch?v=8IzFCU7EZXY

## Co to
Tranzystor to półprzewodnikowy element elektroniczny, który działa jako przełącznik lub
wzmacniacz sygnałów elektrycznych

## Budowa
> Takie tranzystory stanowią połączenie dwóch złączy półprzewodnikowych typu p-n, które razem tworzą strukturę trójwarstwową. Na pograniczu samego złącza p-n spotykają się ze sobą dziury (p) i elektrony (n).

> Każdy tranzystor bipolarny ma dwa złącza – **złącze baza-emiter (B-E) i złącze baza-kolektor (B-C)**.

## Podział
- Tranzystory `n-p-n` - półprzewodnik typu p stanowi bazę tranzystora i jest umieszczony pomiędzy dwiema warstwami typu n. Przypływ przy napięciu dodatnim.
- Tranzystory `p-n-p` półprzewodnik typu n stanowi bazę tranzystora i jest umieszczony pomiędzy dwiema warstwami typu p. Przypływ przy napięciu ujemnym.
To znaczy, że baza tranzystora jest zawsze po środku.
Przy napięciu o przeciwnym znaku do tego, który obsługują, tranzystor przestawia się w stan zaporowy.
![](../../../../media/Pasted%20image%2020251120145203.png)
## Działanie

> Tranzystory bipolarne są elementami sterowanymi prądowo. Przykładając odpowiednie napięcie do bazy względem emitera poprzez rezystory ograniczające, polaryzujesz to złącze i wymuszasz przepływ prądu w jego obwodzie. W zależności od rodzaju tranzystora **przepływ prądu w tranzystorze n-p-n jest wyzwalany napięciem dodatnim, a w tranzystorze p-n-p – napięciem ujemnym.** Wsteczna polaryzacja napięcia powoduje przestawienie tranzystora w stan zaporowy.

## Najważniejsze parametry tranzystorów
> Tranzystor bipolarny i zjawiska w nim zachodzące w celach praktycznych można opisać za pomocą następujących parametrów:
	- **UBE – napięcie baza-emiter** – po jego przekroczeniu tranzystor przechodzi w stan przewodzenia;
	- **IB – prąd bazy** – prąd wpływający do bazy tranzystora, steruje przepływem prądu kolektora;
	- **IC – prąd kolektora** – jest równy prądowi bazy pomnożonemu przez wzmocnienie tranzystora;
	- **IE – prąd emitera** – prąd wypływający z emitera, będący sumą prądu bazy i prądu kolektora;
	- **hFE** – współczynnik wzmocnienia prądowego tranzystora.

## Stany pracy tranzystorów bipolarnych
> Tranzystor bipolarny może znajdować się w trzech stanach pracy.
	- **Stan odcięcia** – jeśli napięcie baza-emiter jest mniejsze od ok. 0,7 V, prąd w bazie nie płynie, a rezystancja złącza kolektor-emiter wskazuje na warunki zbliżone do rozwarcia obwodu, więc tranzystor nie przewodzi.
	- **Stan aktywny** – jeśli napięcie baza-emiter wynosi co najmniej ok. 0,7 V, przez bazę płynie prąd, a rezystancja złącza kolektor-emiter ulega znacznemu zmniejszeniu. Wartość prądu kolektora w stanie przewodzenia jest proporcjonalna do prądu bazy. Stosunek prądu kolektora do prądu bazy określa wzmocnienie prądowe tranzystora. W takim trybie działania tranzystor pełni funkcję prostego wzmacniacza prądu.
	- **Stan nasycenia** – jeśli napięcie baza-emiter jest większe niż ok. 0,7 V, to prąd bazy zostaje odpowiednio podniesiony. Wówczas rezystancja złącza kolektor-emiter jeszcze bardziej maleje. W tym przypadku wartość prądu płynącego przez kolektor jest najwyższa. Taki tranzystor zachowuje się jak przełącznik, który zwiera obwód przez minimalną możliwą rezystancję złącza kolektor-emiter. W takich warunkach wartość prądu emitera jest zbliżona do wartości prądu kolektora, ponieważ zwykle prąd sterujący bazy jest niewielki.

## Zastosowanie tranzystorów
Tranzystory mają zastosowanie w:
- układach scalonych
- bramkach logicznych
- wzmacniaczach
## Podsumowanie
Tranzystor to element półprzewodnikowy. Ma 3 nóżki: emiter, bazę i kolektor. Jak damy napięcie na środkową nóżkę (bazę) pojawia nam się przepływ pomiędzy dwoma pozostałymi nóżkami (emiterem i kolektorem). 
### Tryby pracy
Przy stanie
- ocięcia: napięcie < 0.7v, prąd nie płynie
- aktywnym: napięcie ok 0.7v, tranzystor wzmacnia prąd.
- nasycenia: napięcie > 0.7v, tranzystor działa jak przełącznik


ja pierdole jak bardzo mnie to nie obchodzi po co mi ta fizyka