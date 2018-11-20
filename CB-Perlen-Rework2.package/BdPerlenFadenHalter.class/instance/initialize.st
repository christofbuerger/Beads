as yet unclassified
initialize
|lya|
	super initialize.
	lya:= TableLayout new.
	self layoutPolicy: lya.
	self listDirection: #leftToRight.
	self wrapDirection: #bottomToTop.
	self borderInitialize.
	self borderColor: Color black.
	self borderWidth: 3.
	
	self position: 200@200.
	self extent: 400@600.
	self anzeigenScrollable.
	