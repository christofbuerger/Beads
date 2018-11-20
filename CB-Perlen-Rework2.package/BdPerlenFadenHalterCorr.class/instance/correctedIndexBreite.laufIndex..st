as yet unclassified
correctedIndexBreite: breite laufIndex: im
|i|
i:=im-1.

^	i + 1
		+
			(i \\ breite + 1 <= (i // (2 * breite) \\ breite)
				ifTrue: [ -1 * (i // (2 * breite)) \\ breite ]
				ifFalse: [ -1 * (i // (2 * breite) \\ breite) ]).