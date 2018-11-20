as yet unclassified
perlenFadenAnzeigen: breite perlenFadenModel: pfm
"self fadenhaltercorr: BdPerlenFadenHalterCorr new."
self fadenhaltercorr perlenFadenModel: pfm.
self myPerlenhalter: self fadenhaltercorr.
 
self fadenhaltercorr perlenFadenModel addDependent: self fadenhaltercorr.

self fadenhaltercorr perlenFadenAnzeigen: breite offset: 0.
self fadenhaltercorr borderWidth: 0.
self extent: self fadenhaltercorr extent.
self fadenhaltercorr position: self position.
self addMorph: self fadenhaltercorr fullFrame: (0@0 corner: 1@1).
self nachVorn.