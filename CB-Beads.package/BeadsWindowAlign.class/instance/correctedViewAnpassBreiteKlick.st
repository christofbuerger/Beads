view
correctedViewAnpassBreiteKlick
	| hand |
	hand := HandMorph new.
	MouseButtonEvent new
		setType: #mouseDown
			position: self buttomRightCornerGrip position
			which: 2
			buttons: 2
			hand: hand
			stamp: nil;
		sentTo: self buttomRightCornerGrip;
		setType: #mouseUp
			position: self buttomRightCornerGrip position
			which: 2
			buttons: 2
			hand: hand
			stamp: nil;
		sentTo: self buttomRightCornerGrip