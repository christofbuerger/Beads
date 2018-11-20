paint
correctedViewbreite: breite2 offset: offset
 	|  p halbePerle pm inGer  pfm pV|
	
	self breite: breite2.
	p:=0. inGer:=0.
	self perlenWeg.
	halbePerle:=(((self perlenSize)//2)@self perlenSize).
	pfm:=self perlenFadenModel.	
	
	self addMorphBack: (BorderedMorph new extent: halbePerle; color: Color black).
	1 to: ((pfm size)) do: [ :i | 
		    p := (self correctedIndexBreite: breite2 laufIndex: i offset: offset).
		inGer := breite2 * (2 + ((i - 1) // breite2)) - ((i - 1) // (2 * breite2) \\ breite2).
		(p <= (pfm size)) ifTrue: [self addMorphBack: (BdPerleMorph newMitModel: (pfm at: p))].
		(i / breite2) fractionPart = 0 & (i / breite2) odd
			ifTrue: [ 
				self addMorphBack: (BorderedMorph new extent: halbePerle; color: Color black).
				((inGer)<=(pfm size) )& ((pV := (self correctedIndexBreite: breite2 laufIndex: i+breite2 offset: offset))<=(pfm size)) ifTrue:
				[ "pV := (self correctedIndexBreite: breite2 laufIndex: i+breite2 offset: offset)."
				  pm:=(pfm at: pV). 
				self addMorphBack: 	(((BdPerleMorph newMitModel: pm ) makeDouble )) ] ].
		 (i / breite2) fractionPart = 0 & (i / breite2) even
			ifTrue: [ self addMorphBack: (BorderedMorph new extent: halbePerle; color: Color black) ]]