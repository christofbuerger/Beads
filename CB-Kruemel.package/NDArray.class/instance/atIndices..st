as yet unclassified
atIndices: anArray
"Return element specified by its n indices."

| index nullerArray|


 
index := 0. 
multipliers with: anArray do: [:el1 :el2 | index := index + (el1 * el2)]. 
^elements at: index - constant