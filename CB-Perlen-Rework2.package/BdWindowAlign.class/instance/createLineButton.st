interface building
createLineButton
	^ self
		newButtonFor: self
		getState: nil
		action: #drawLine
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons connectorIcon
		help: 'Draw Line' translated