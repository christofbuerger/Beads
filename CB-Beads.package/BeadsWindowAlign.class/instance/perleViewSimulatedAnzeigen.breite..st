view
perleViewSimulatedAnzeigen: aPerleFadenModel breite: breite
| z m1 m2 |

"rotationCount:=rotationCount+1."
self createToolBarSimul.

z := Zaehler new.
self perlenFadenModel: aPerleFadenModel.
simulationFaden:=OrderedCollection new.

self perlenFadenModel do: [ :perle| 2 timesRepeat: [ simulationFaden add:  (((BoarderedPerleView erzeugenMitModel: perle groessePoint: ((beadWidth/2)@beadWidth)) label:'';extent:((beadWidth/2)@beadWidth); borderColor:( Color fromString: (perle farbe)))) ] 	 ].

"((z simulatedIndexBreite: breite*2 laufIndex: i)<=(simulationFaden size)) ifTrue:"
	
1 to: ((simulationFaden size)) do: 
[ :i|  
	((z simulatedIndexBreite: (breite*2)laufIndex: i)<=(simulationFaden size)) ifTrue:
	[self morph addMorphBack: (simulationFaden at: (z simulatedIndexBreite: (breite*2) laufIndex: i offset: rotationCount) )]].

self addMorph: (m1:=Morph new ) fullFrame: ((0@0 corner: 0.25@1) asLayoutFrame topOffset: self dock minExtent y+3).
self addMorph: (m2:=Morph new ) fullFrame: ((0.75@0 corner: 1@1) asLayoutFrame topOffset: self dock minExtent y+3).
m1 color: ((Color veryVeryLightGray) alpha: 0.8); comeToFront.
m2 color: ((Color veryVeryLightGray) alpha: 0.8); comeToFront.
	
	
						
						