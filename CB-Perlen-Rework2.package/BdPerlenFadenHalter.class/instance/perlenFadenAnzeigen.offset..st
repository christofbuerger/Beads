as yet unclassified
perlenFadenAnzeigen: breite2 offset: anInteger
|b|
"self perlenFadenAnzeigen."
b:=breite2.
self breite: breite2.
b<1 ifTrue: [ b:=1 ].
self extent: ((self perlenSize * (b+1)))+(2*self borderWidth)@(((self perlenFadenModel size/b)+2)* self perlenSize).
