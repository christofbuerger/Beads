as yet unclassified
fensterRefresh
|breite|

breite:= self fensterBreiteInPerlen.

self fensterInfoMorphRefresh.

self morph myPerlenhalter class == BdPerlenFadenHalter ifTrue:
    [self myPerlenhalter perlenFadenAnzeigen: breite offset: 0].

self morph myPerlenhalter class == BdPerlenFadenHalterCorr ifTrue:
 [self myPerlenhalterCorr perlenFadenAnzeigen: breite offset: 0].

self morph myPerlenhalter class == BdPerlenFadenHalterSimu ifTrue:
 [self myPerlenhalterSim perlenFadenAnzeigen: breite  offset: 0.
	"self myPerlenhalterSim update: #asp."
	].


"perlenFadenModel: (self myPerlenhalterCorr perlenFadenModel)"


