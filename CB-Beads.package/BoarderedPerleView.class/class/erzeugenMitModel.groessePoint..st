as yet unclassified
erzeugenMitModel: aPerleModel groessePoint: anExtent
	^ (self new perleModel: aPerleModel) 
						farbeInitial: (aPerleModel farbe); 
						label: aPerleModel nummer asString; groesse: anExtent.
	