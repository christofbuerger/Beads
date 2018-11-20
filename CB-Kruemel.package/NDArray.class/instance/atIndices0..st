as yet unclassified
atIndices0: anArray
"Return element specified by its n indices."

| index nullerArray|

nullerArray := anArray + 1.
 
index := 0. 
multipliers with: nullerArray  do: [:el1 :el2 | index := index + (el1 * el2)]. 
^elements at: index - constant