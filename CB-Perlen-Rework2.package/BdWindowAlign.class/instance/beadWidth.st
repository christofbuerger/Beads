accessing
beadWidth
	morph ifNil: [ ^ self defaultBeadWidth ] ifNotNil: [ ^ (morph myPerlenhalter submorphs at: 2) width ]

	"^ (morph myPerlenhalter submorphs at: 2) width
"	"^ (self myPerlenhalter submorphs at: 2) width"