
ALU - jednostka artmetyczno-logiczna
# Architektura Harvardzka
`Pamięć programu - Jednostka przetwarzająca - Pamięć danych`

# Architektura von Neumann'a
1945 - maszyna z princeton

Podział komputera na trzy podstawowe części:
- Procesor (część sterująca, część )
- Pamięć
- Urzędzenia wyjścia wyjścia
![magistrala](/Excalidraw/magistrala.md)

# DMA
Direct memory access - bezpośredni dostęp do pamięci, w czasie gdy magistrala nie jest sterowana przez cpu. Taki dostęp ma sterownik.

# Port
Konkretne miejsce w pamięci nasłuchiwane przez sterownik.

# Przetwarzanie
Dane -> układ -> wyniki

Dwa sposoby:
- `Dane -> specjalizowany układ cyfrowy -> wyniki` - hardware
- `Dane -> system mikroprocesorowy -> wyniki` - hardware, software
![Przetwarzanie danych_obrazek](/Excalidraw/Przetwarzanie%20danych_obrazek.md)

# Główne architektury
- CISC - complex intrusction set computer: złożone instrukcje, łatwiejsze programowanie, droższe w budowie, operowanie bezpośrednio na pamięci
- RISC - reduced instruction set computer - prosta budowa, dłuższe programy, zwiększenie liczby rejestrów, ograniczenie komunikacji pomiędzy pamięcią, a procesorem.

# Sterownik
Zarówno układ elektroniczny jak i program, który kontroluje impulsy elektryczne sterujące urządzeniem zewnętrznym.

# Taksonomia Flynna
SISD
SIMD
MISD
MIMD

4 symbole
1 i 3 symbol: M(multiple)/S(single)
2 i 4 symbol: I(Instruction), D(data)