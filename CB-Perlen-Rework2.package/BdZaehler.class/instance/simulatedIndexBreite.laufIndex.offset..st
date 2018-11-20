as yet unclassified
simulatedIndexBreite: breite laufIndex: im offset: offset
	| i io |
	io:=breite*offset.
	i := im - 1.	
	^ i + 1
		+
			((i+io) \\ breite + 1 <= ((i+io) // breite \\ breite)
				ifTrue: [ -1 * ((i+io) // breite) \\ breite ]
				ifFalse: [ -1 * ((i+io) // breite \\ breite) ])	
				" blabl a "