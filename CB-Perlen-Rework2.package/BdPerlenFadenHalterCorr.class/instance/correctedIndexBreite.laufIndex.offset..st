as yet unclassified
correctedIndexBreite: breite2 laufIndex: im offset: offset
|i io|
io:=breite*offset.
i:=im-1.

^	i + 1
		+
			((i+io) \\ breite + 1 <= ((i+io) // (2 * breite) \\ breite)
				ifTrue: [ -1 * ((i+io) // (2 * breite)) \\ breite ]
				ifFalse: [ -1 * ((i+io) // (2 * breite) \\ breite) ]).
				
			

