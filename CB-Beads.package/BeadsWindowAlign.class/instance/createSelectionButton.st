interface building
createSelectionButton
	^ self
		newButtonFor: self
		getState: nil
		action: #selectBeads
		arguments: nil
		getEnabled: nil
		labelForm: MDIcons default rectangleIcon
		help: 'select Beads for Coloring' translated