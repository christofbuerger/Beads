interface building
createNewWindowButtonRotateRight
	^ self
		newButtonFor: self
		getState: nil
		action: #simulatedViewRotateRight
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons changeUpdateIcon
		help: 'Kette rotieren' translated