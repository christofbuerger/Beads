interface building
createCircleButton
	^ self
		newButtonFor: self
		getState: nil
		action: #drawCircle
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons radioButtonOffIcon
		help: 'Draw Circle' translated