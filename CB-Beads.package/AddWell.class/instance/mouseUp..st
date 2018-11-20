event handling
mouseUp: evt
	mouseDown := false.
	self changed.
	super mouseUp: evt