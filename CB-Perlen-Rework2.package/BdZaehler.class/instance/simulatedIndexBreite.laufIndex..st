as yet unclassified
simulatedIndexBreite: breite laufIndex: im
	| i |
	i := im - 1.	
	^ i + 1
		+
			(i \\ breite + 1 <= (i // breite \\ breite)
				ifTrue: [ -1 * (i // breite) \\ breite ]
				ifFalse: [ -1 * (i // breite \\ breite) ])	