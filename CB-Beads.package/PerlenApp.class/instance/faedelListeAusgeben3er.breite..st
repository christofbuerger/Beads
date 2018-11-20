as yet unclassified
faedelListeAusgeben3er: aperlenFadenModel breite: breite
	|farbliste x i gruppenzaehl|
	
	i:=0.
	gruppenzaehl:=0.
	x := OrderedCollection new.
	farbliste:=OrderedCollection new.
(self perlenFadenModel do: [ :pm | farbliste add: (pm farbe asString)] ).
farbliste 
		do: [ :a | 
			i := i + 1.
			x
				add:
					{i.
					(a size).
					(a at: 1)}.
					gruppenzaehl:=gruppenzaehl+1.
			Transcript
					show: 'Gruppe: '; tab;show:	i;tab;
					show: a;cr.
					i\\3=0 ifTrue: [ Transcript show: '--------------------------------';cr. ].
					gruppenzaehl\\breite=0 ifTrue: [ Transcript show: '------------------------------------------------------------- neueZeile';cr. ]
					 ].
	^ x