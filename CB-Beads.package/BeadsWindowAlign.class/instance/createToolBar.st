interface building
createToolBar
	tools := self newToolbar: { 
						 (self createNewWindowButtonCorrected).
						 (self createNewWindowButtonSimulated).
						 (self createNewWindowButtonDraft).
						 (self createLabelsOnOff).
						 (self createSelectionButton).
						 (self createCircleButton).
						 (self createLineButton) 
						}.
	dock := self newToolDockingBar.
	dock addMorph: tools