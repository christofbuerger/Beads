interface building
createCircleButton
	^ self
		newButtonFor: self
		getState: nil
		action: #drawCircle
		arguments: nil
		getEnabled: nil
		labelForm: MDIcons default radioButtonOffIcon
		help: 'Draw Circle' translated