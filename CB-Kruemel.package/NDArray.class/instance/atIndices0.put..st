as yet unclassified
atIndices0: anArray put: aWert
"put element specified by its n indices."

| index nullerArrray | 
nullerArrray := anArray + 1.
index := 0. 
multipliers with: nullerArrray  do: [:el1 :el2 | index := index + (el1 * el2)]. 
elements at: index - constant put: aWert.