Liczby zespolone oznaczamy w fizyce literą `j`

Transformator:
- element czterozaciskowy,
- dwie uporządkowane pary zacisków: wejściowa i wyjściowa
- bezstratne przenoszenie energii elektrycznej (prądu przemiennego) między wejściem i wyjściem -> równość mocy
`U1I1 = U2I2`
# Rezystancja
Opór
# Impedancja
Impedancja to ==całkowity opór, jaki element obwodu stawia prądowi przemiennemu==. Jest to wielkość, która uogólnia opór elektryczny (rezystancję) znany z obwodów prądu stałego. Mierzona w omach (
), impedancja uwzględnia także właściwości pojemnościowe i indukcyjne elementów, co jest szczególnie istotne w akustyce (np. słuchawki, głośniki) i elektronice.


# Układy RC
To nic innego niż dzielnik napięcia.
![układ_rc](/Excalidraw/układ_rc.md)

# Filtry elektryczne
Obwody elektryczne wydzielające z sygnału elektrycznego przebiegi o częstotliwościach znajdujących się w określonym paśmie częstotliwości.

- dolnoprzepustowe
- górnoprzepustowe
- pasmozaporowe
- pasmowoprzepustowy
## Filtry LC
LC czyli impedacyjno-admitacyjne(?)

- Dolno przepustowy
- Gównoprzepustowy
- Pasmowozaporowy
- Pasmowoprzepustowy
[jakieś źródło do nauki](/https://forbot.pl/blog/czym-jest-filtr-lc-jak-dziala-i-kiedy-moze-sie-przydac-id40588)
# Obwody RLC
Funkcje obwodów RLC:
- dzielenie napięć
- sprzęganie układów
- kształtowanie impulsów
- selekcja wybranych pasm częstotliwości

Przykładem obwodu RLC jest dzielnik napięcia. Dzielnik napięcia dzieli napięcie wejściowe na dwa lub więcej napięć wyjściowych.

`U1 = R1/(R1 + R2) * U`

`U2 = R2/(R1 + R2) * U`

Dzielnik pojemnościowy:
`U1 = C2/(C1 + C2) * U`
`U2 = C1/(C1 + C2) * U`

Dzielnik pojemnościowo-rezystancyjny
`U1 = (1/R2 + jwC2) / (1/R1 + 1/R2 + jw(C1 + C2)) * U`

Dzielnik indukcyjny

# Zakłócenia elektromagnetyczne
Zakłócenia elektromagnetyczne - linia długa.

Transmisja szeregowa jest szybsza niż równoległa, przez zakłócenia.

Przykładem transmisji równoległej jest skrętka. To tam działa, bo na raz sprzężenia będą w dwie strony przez co będą się znosić.