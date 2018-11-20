as yet unclassified
faedelListeAusgeben: aBeadsString
	| x i |
	i := 0.
	x := OrderedCollection new.
	aBeadsString
		piecesCutWhere: [ :a :b | a ~= b ]
		do: [ :a | 
			i := i + 1.
			x
				add:
					{i.
					(a size).
					(a at: 1)}.
			Transcript
				show:
						{i.
							(a size).
							(a at: 1)};
				cr ].
	^ x