interface building
createNewWindowButtonRotateLeft
	^ self
		newButtonFor: self
		getState: nil
		action: #simulatedViewRotateLeft
		arguments: nil
		getEnabled: nil
		labelForm: MDIcons default changeBlockIcon
		help: 'Kette rotieren' translated