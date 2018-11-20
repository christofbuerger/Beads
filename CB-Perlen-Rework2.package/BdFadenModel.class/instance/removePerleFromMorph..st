as yet unclassified
removePerleFromMorph: aBdPerleMorph
|zaehler|
zaehler:=0.
self perlenFadenModel remove: aBdPerleMorph perleModel.
"self perlenFadenModel do: [ :m | zaehler:=zaehler+1. m nummer: zaehler]."
"self myDependents do: [ :d | d refreshBdPerlenFadenHalter ]"

