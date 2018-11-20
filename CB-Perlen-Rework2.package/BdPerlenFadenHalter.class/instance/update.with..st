as yet unclassified
update: anAspect with: aFadenModel

anAspect == #nummern ifTrue:
[ Transcript show: '#nummern Aspect erhalten von perlenFadenModel';cr. 
	self refreshBdPerlenFadenHalter].

anAspect == #addPerle ifTrue:
[  ].
anAspect == #deletePerle ifTrue:
[ self perlenFadenAnzeigen ].



