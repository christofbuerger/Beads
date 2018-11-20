interface building
createNewWindowButtonDraft
	^ self
		newButtonFor: self
		getState: nil
		action: #newRectangle
		arguments: nil
		getEnabled: nil
		labelForm: MDIcons default changeSorterIcon
		help: 'New draft' translated