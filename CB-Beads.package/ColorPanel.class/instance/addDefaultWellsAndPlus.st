initialization
addDefaultWellsAndPlus
	self submorphsDo: [ :each | each delete ].
	"self addMorphBack: (AddWell on: #addColor)."
	(self defaultValues) do: [ :farb| self addMorphBack: (ColorWell on: farb) ].
	
	"self addMorphBack: (ColorWell on: Color lightYellow).
	self addMorphBack: (ColorWell on: Color lightGreen).
	self addMorphBack: (ColorWell on: Color lightBlue).
	self addMorphBack: (ColorWell on: Color veryVeryLightGray).
	self addMorphBack: (ColorWell on: Color veryPaleRed).
	self addMorphBack: (ColorWell on: Color lightOrange).
"