view
simulatedViewRotate: breite offset: offset
|z |
z:=Zaehler new.
self morph removeAllMorphs.


1 to: ((simulationFaden size)) do: [ :i|  self morph addMorphBack: (simulationFaden at: (z simulatedIndexBreite: (breite*2) laufIndex: i offset: offset) )].
