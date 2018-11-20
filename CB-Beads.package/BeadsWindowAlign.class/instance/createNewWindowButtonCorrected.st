interface building
createNewWindowButtonCorrected
	^ self
		newButtonFor: self
		getState: nil
		action: #openCorrected
		arguments: nil
		getEnabled: nil
		labelForm: MDIcons default cardIcon
		help: 'New Corrected' translated