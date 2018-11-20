view
simulatedView: aPerlenFaden breite: breite 

|z aPerleFadenModel |
z:=Zaehler new.

simulationFaden := OrderedCollection new.

aPerleFadenModel do: [ :perle| 2 timesRepeat: [ simulationFaden add:  ((BoarderedPerleView erzeugenMitModel: perle groessePoint: (24@48)))] 	 ].
	
	1 to: ((simulationFaden size)) do: [ :i|  self morph addMorphBack: (simulationFaden at: (z simulatedIndexBreite: 12 laufIndex: i) )].