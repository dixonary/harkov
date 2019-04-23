# markov

Markov chains in Haskell.

There's a version of the CMUDict files in the data/ directory which I have scrubbed (a bit) to make them more amenable to chaining.

## Dependencies
Haskell Stack

## To use
```sh
stack build
stack exec -- markov data/cmudict.txt
```

## Examples

Here are some produced examples. The chain is produced over CMU pronunciations, so you'll have to use your imagination with the spelling.

```
L OW1 L AY1 B IH1 K T AH0 N
Z
Z B EH0 K OW0
ER0 S P D AH0 N
K R OW0
AA1 N D IH0 M P AO1 L AH1 M AA2 N D AH1 M IY1 S P OY1 D IY0 L AH0 L EY1
K EH1 D IH0 F L AE1 V OY1
IH0 N AH0 P R IH1 K W AH0 N B L IH1 K L
AH0 HH IH2 P EY1 SH
AH0 S IH0 K IH1 L EY1 B IH1 L AE1 B AA1 M AE2 K AA1 R AH0 N EH1 L EY1 T
V IY2 AH0 D IY1 D
T IY1 D
Z
IY0 OW0 K
ER0
R AO1 N
S T UW2 M B ER0
UW1 N
Z IY0
D EH1 N AH0 N CH AE1 K AH0 L IH0 S UW0 CH IH0 NG
ER0 W AY1 T
F AO1 R AY1 ER0 IY0
D
K S N S T S AH0 N T ER0 AH0
EH1 N
D
K
K EY1 V ER1 N AH0 L Z
S P IY0
L IY0
AH0 L
AH0 K
B AH0 L AA1 D R AY1 G Z
K L IH0 HH W EY1 T F
AO0 D Z
L AA1 K IY1
M AA2 S T N IY0
L ER0 Z
ER0 Z
IH2 L D
D
ER0
Z
AH0 N AH0 L IY1 P R L Z
R AH0 K CH UW0 T S N
L IY0
OW1 Z
N ER0 G R IY0 AA1 N
F IY0
ER0
Z IH1 Z
```
