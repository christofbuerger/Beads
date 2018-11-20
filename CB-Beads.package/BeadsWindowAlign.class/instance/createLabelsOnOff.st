interface building
createLabelsOnOff
	^ self
		newButtonFor: self
		getState: nil
		action: #labelsOnOff
		arguments: nil
		getEnabled: nil
		labelForm: MDIcons default smallJustifiedIcon
		help: 'Labels On and Off' translated