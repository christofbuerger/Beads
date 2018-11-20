view
simulatedViewRotate
|z breite|
breite:= self fensterBreiteInPerlen. 
rotationCount:=rotationCount+1.
z:=Zaehler new.
self morph removeAllMorphs.
Transcript show: 'hallo - das ist der simulatedViewRotate ohne Parameter ';tab;show:'rotationCount: ';show: rotationCount;cr.



1 to: (simulationFaden size) do: 
[ :i|  
	
	((z simulatedIndexBreite: (breite*2)laufIndex: i offset: rotationCount)<=(simulationFaden size)) ifTrue:
	
	[self morph addMorphBack: (simulationFaden at: (z simulatedIndexBreite: (breite*2) laufIndex: i offset: rotationCount) ).
	"Transcript show: 'simulationFaden at: '; show:(z simulatedIndexBreite: (breite*2) laufIndex: i offset: rotationCount);cr." ]].
