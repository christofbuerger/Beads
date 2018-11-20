as yet unclassified
correctedIndexBreite: breite laufIndex: im
|i|
i:=im-1.

"Transcript show: 'aus dem Zaehler>>correctedIndexBreite:laufIndex: ';show: i;cr."

^	i + 1
		+
			(i \\ breite + 1 <= (i // (2 * breite) \\ breite)
				ifTrue: [ -1 * (i // (2 * breite)) \\ breite ]
				ifFalse: [ -1 * (i // (2 * breite) \\ breite) ]).
				
			
		
"	((i+1)+ ((((((i\\6)+1)<=(((((i)//12)))\\6)))) ifTrue: [((-1*((i//12)))\\6)] ifFalse: [-1*(((((i)//12)))\\6)]))"