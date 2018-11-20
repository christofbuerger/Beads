interface building
createLineButton
	^ self
		newButtonFor: self
		getState: nil
		action: #drawLine
		arguments: nil
		getEnabled: nil
		labelForm: MDIcons default connectorIcon
		help: 'Draw Line' translated