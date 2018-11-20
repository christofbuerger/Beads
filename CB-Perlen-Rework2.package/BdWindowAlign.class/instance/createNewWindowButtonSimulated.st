interface building
createNewWindowButtonSimulated
	^ self
		newButtonFor: self
		getState: nil
		action: #newRectangle
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons rectangleIcon
		help: 'New Simulated' translated