geometry
extent: aPoint
	| newArea |
	super extent: aPoint.
	newArea := FormCanvas extent: aPoint.
	newArea 
		fillColor: Color white;
		drawImage: self area form at: 0@0.
	area := newArea
	