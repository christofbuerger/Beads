as yet unclassified
extent: newExtent

	super extent: newExtent.
	self selectSubmorphsOf: ((self fenster) morph)