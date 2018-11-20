initialization
initializeCorrWithPerlenFadenHalter: aPerlenFadenHalter
self myPerlenhalter: aPerlenFadenHalter.
self myPerlenhalterCorr: (BdPerlenFadenHalterCorr new perlenFadenModel: (aPerlenFadenHalter perlenFadenModel)).
super initialize.
	rotationCount:=0.
	self morph: ((self myPerlenhalterCorr perlenFadenAnzeigen:  self fensterBreiteInPerlen) anzeigenScrollable).

self initialize.
