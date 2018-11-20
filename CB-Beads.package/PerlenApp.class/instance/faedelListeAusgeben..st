as yet unclassified
faedelListeAusgeben: aperlenFadenModel
	|farbliste x i|
	
	i:=0.
	x := OrderedCollection new.
	farbliste:=OrderedCollection new.
(self perlenFadenModel do: [ :pm | farbliste add: (pm farbe asString)] ) piecesCutWhere: [ :a :b | a ~= b ].
farbliste piecesCutWhere: [ :a :b | a ~= b ]	
		do: [ :a | 
			i := i + 1.
			x
				add:
					{i.
					(a size).
					(a at: 1)}.
			Transcript
					show: 'Gruppe: '; tab;show:	i;tab;
					show: (a size); show:' mal '; 
					show: (a at: 1);cr ].
	^ x