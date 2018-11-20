interface building
createSelectionButton
	^ self
		newButtonFor: self
		getState: nil
		action: #selectBeads
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons rectangleIcon
		help: 'select Beads for Coloring' translated