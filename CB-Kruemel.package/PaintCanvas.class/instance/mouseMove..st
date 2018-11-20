event handling
mouseMove: anEvent
	self area 
		fillOval: (Rectangle center: anEvent cursorPoint - self position extent: 1@1)
		color: self paintingColor.
	self changed.