initialization
initializeSimWithPerlenFadenHalter: aPerlenFadenHalter
self myPerlenhalter: aPerlenFadenHalter.
self myPerlenhalterSim: (BdPerlenFadenHalterSimu new perlenFadenModel: (aPerlenFadenHalter perlenFadenModel)).
super initialize.
	rotationCount:=0.
	self morph: ((self myPerlenhalterSim perlenFadenAnzeigen:  self fensterBreiteInPerlen) anzeigenScrollable).

self initialize.

