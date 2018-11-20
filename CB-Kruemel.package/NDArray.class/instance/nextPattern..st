as yet unclassified
nextPattern: anArray
"Find the next pattern of indices, return nil if there is none." 
| nextPattern | 
nextPattern := anArray copy. 
"Look for the first element that is smaller than the corresponding dimension. "
1 to: dimensions do:
[:index | | value | value := anArray at: index.
value < (sizes at: index) ifTrue: [ 
	"Increment the element, reset the preceding, return result."
nextPattern at: index put: value + 1. nextPattern atAll: ( 1 to: index - 1) put: 1. ^nextPattern]].
"All patterns printed, we are finished." 
^nil