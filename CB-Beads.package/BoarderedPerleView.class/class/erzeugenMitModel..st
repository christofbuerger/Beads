as yet unclassified
erzeugenMitModel: aPerleModel
	^ (self new perleModel: aPerleModel) 
						farbeInitial: (aPerleModel farbe); 
						label: aPerleModel nummer asString; groesse: (25@25).
	