as yet unclassified
atIndices: anArray put: aWert
"put element specified by its n indices."

| index | 
index := 0. 
multipliers with: anArray do: [:el1 :el2 | index := index + (el1 * el2)]. 
elements at: index - constant put: aWert.