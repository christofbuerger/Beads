interface building
createNewWindowButtonRotateLeft
	^ self
		newButtonFor: self
		getState: nil
		action: #simulatedViewRotateLeft
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons back
		help: 'Kette rotieren' translated