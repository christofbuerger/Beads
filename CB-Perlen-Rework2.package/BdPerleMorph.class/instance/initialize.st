as yet unclassified
initialize
	owner := nil.
	
	submorphs := EmptyArray.
	bounds := self defaultBounds.
	color := self defaultColor.
	self borderInitialize.
		self borderWidth: 1.
	self color: (Color r: 0.4 g: 0.8 b: 0.6).
	self borderColor: self color darker.
	self borderStyle: BorderStyle thinGray.
	target := nil.
	actionSelector := #flash.
	arguments := EmptyArray.
	actWhen := #buttonUp.
	subscribed:=0.
		
	
	self extent: self defaultExtent@self defaultExtent.
	self label: 'bla'.
