updating
changed
	mouseDown ifTrue: [plusColor := Color lightGray]
	ifFalse: [ plusColor := Color veryVeryLightGray ].
	^ super changed