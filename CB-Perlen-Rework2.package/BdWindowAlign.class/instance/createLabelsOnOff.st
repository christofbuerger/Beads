interface building
createLabelsOnOff
	^ self
		newButtonFor: self
		getState: nil
		action: #labelsOnOff
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons smallJustifiedIcon
		help: 'Labels On and Off' translated