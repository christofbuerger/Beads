updating
changed
	over ifTrue: [borderColor := Color veryVeryLightGray]
	ifFalse: [ borderColor := self defaultBorderColor ].
	^ super changed