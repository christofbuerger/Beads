as yet unclassified
erzeugenMitModel: aPerleModel groesse: anInteger
	^ (self new perleModel: aPerleModel) 
						farbeInitial: (aPerleModel farbe); 
						label: ''; "aPerleModel nummer asString;" groesse: (anInteger@anInteger).
	