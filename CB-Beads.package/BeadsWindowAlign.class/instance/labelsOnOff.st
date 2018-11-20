interface building
labelsOnOff
 (self morph submorphs at: 1) label ='' 
		ifTrue: [self morph submorphs do: [ :perle | perle label: perle perleModel nummer asString. 
																					perle extent: beadWidth@beadWidth ]] 
		ifFalse:  [self morph submorphs do: [ :perle | perle label: ''. perle extent: beadWidth@beadWidth ]]