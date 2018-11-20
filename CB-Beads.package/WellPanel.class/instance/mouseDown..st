event handling
mouseDown: evt
	evt ifNotNil: [ 
			evt hand waitForClicksOrDrag: self event: evt ]