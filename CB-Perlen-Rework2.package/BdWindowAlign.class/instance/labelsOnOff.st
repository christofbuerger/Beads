accessing
labelsOnOff
( ((self morph submorphs at: 1) submorphs at:1)  submorphs at:2) label ='' 

"perle extent: beadWidth@beadWidth
((self morph submorphs at: 1) submorphs at: 1 )submorphs do: [ :perle | perle class == BdPerleMorph ifTrue: [perle label: ''. ] ].
((self morph submorphs at: 1) submorphs at: 1 )submorphs do: [ :perle | perle class == BdPerleMorph ifTrue: [perle label: perle perleModel nummer asString. . ] ]."
ifTrue:  [((self morph submorphs at: 1) submorphs at: 1 )submorphs do: [ :perle | perle class == BdPerleMorph ifTrue: [perle label: perle perleModel nummer asString.]]]
		ifFalse: [((self morph submorphs at: 1) submorphs at: 1 )submorphs do: [ :perle | perle class == BdPerleMorph ifTrue: [perle label: ''. ]]]
			 		