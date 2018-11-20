initialization
addDefaultWellsAndPlus
	self submorphsDo: [ :each | each delete ].
	self addMorphBack: (AddWell new).
	self defaultValues do: [ :value | 
		self addMorphBack: 
			((self wellClass on: value)
				panel: self;
				yourself)].
