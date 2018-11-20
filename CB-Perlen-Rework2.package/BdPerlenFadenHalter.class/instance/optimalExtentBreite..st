as yet unclassified
optimalExtentBreite: anInteger
| fadenlaenge  perleWidth|

breite:=anInteger.
perleWidth:=(self submorphs at: 1) extent x.
fadenlaenge:=self perlenFadenModel size.
self extent: (perleWidth*(anInteger+1))@((perleWidth*fadenlaenge//anInteger)+(2*perleWidth)).
self scrollpane extent: self extent x@self scrollpane extent y
