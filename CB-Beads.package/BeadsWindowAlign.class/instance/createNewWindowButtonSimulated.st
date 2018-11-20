interface building
createNewWindowButtonSimulated
	^ self
		newButtonFor: self
		getState: nil
		action: #newRectangle
		arguments: nil
		getEnabled: nil
		labelForm: MDIcons default rectangleIcon
		help: 'New Simulated' translated