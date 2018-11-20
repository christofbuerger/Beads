as yet unclassified
perlenFadenAnzeigen:  breite2 offset: offset

self correctedViewbreite: breite2 offset: (2*offset).
self perlenNumerieren.
self perlenSize: self perlenSize.


self extent: ((self perlenSize * (breite2+1)))+(2*self borderWidth)@(((self perlenFadenModel size/breite2)+2)* self perlenSize).