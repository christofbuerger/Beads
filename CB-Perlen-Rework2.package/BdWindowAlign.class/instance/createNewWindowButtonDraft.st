interface building
createNewWindowButtonDraft
	^ self
		newButtonFor: self
		getState: nil
		action: #newRectangle
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons changeSorterIcon
		help: 'New draft' translated