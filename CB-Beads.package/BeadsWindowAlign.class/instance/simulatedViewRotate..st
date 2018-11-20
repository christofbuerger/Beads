view
simulatedViewRotate: breite
|z |
rotationCount:=rotationCount+1.
z:=Zaehler new.
self morph removeAllMorphs.


1 to: ((simulationFaden size)) do: [ :i|  self morph addMorphBack: (simulationFaden at: (z simulatedIndexBreite: (breite*2) laufIndex: i offset: rotationCount) )].
