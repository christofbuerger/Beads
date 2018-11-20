event handling
mouseDown: evt
	evt ifNotNil: [ 
		mouseDown := true.
		self changed.
		evt hand waitForClicksOrDrag: self event: evt ]