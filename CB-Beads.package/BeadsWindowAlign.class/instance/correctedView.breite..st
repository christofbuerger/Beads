view
correctedView: aPerlenFaden breite: breite
 	| z p halbePerle pm inGer|
	
	p:=0. inGer:=0.
	"blabla"
	halbePerle:=((beadWidth//2)@beadWidth).
	self perlenFadenModel: aPerlenFaden.
	
	z := Zaehler new.
	self morph addMorphBack: (BorderedMorph new extent: halbePerle; color: Color black).
	1 to: ((aPerlenFaden size)) do: [ :i | 
		    p := (z correctedIndexBreite: breite laufIndex: i).
		inGer := breite * (2 + ((i - 1) // breite)) - ((i - 1) // (2 * breite) \\ breite).
		(p <= (aPerlenFaden size)) ifTrue: [self morph addMorphBack: (aPerlenFaden at: p)].
		(i / breite) fractionPart = 0 & (i / breite) odd
			ifTrue: [ 
				self morph addMorphBack: (BorderedMorph new extent: halbePerle; color: Color black).
				((inGer)<=(aPerlenFaden size) )ifTrue:
				[ pm:=(aPerlenFaden at: inGer) perleModel. 
				self morph
					addMorphBack: 	(((aPerlenFaden at: inGer ) veryDeepCopy) perleModel: pm) ] ].
		 (i / breite) fractionPart = 0 & (i / breite) even
			ifTrue: [ self morph addMorphBack: (BorderedMorph new extent: halbePerle; color: Color black) ] ]