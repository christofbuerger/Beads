interface building
createNewWindowButtonRotateRight
	^ self
		newButtonFor: self
		getState: nil
		action: #simulatedViewRotateRight
		arguments: nil
		getEnabled: nil
		labelForm: MDIcons default changeUpdateIcon
		help: 'Kette rotieren' translated