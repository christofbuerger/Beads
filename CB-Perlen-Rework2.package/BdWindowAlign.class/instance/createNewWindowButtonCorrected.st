interface building
createNewWindowButtonCorrected
	^ self
		newButtonFor: self
		getState: nil
		action: #openCorrected
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons cardIcon
		help: 'New Corrected' translated