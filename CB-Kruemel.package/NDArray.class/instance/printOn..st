as yet unclassified
printOn: aStream
"Append to the argument, aStream, the elements of the Array enclosed by parentheses." 

| pattern position | 
position := 1. 
aStream nextPutAll: 'NDArray'; nextPutAll: ' ('; cr.
pattern := (Array new: dimensions) atAllPut: 1. 
[pattern isNil] whileFalse:
[1 to: pattern size do: [:index | aStream nextPutAll: (pattern at: index) printString , ' ']. 
	aStream nextPutAll: ':	', (self atIndices: pattern) printString; cr. 
		position := position + 1. pattern := self nextPattern: pattern].
aStream nextPut: $)