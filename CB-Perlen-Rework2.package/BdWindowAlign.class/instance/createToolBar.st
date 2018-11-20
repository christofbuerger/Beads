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
	tools2 := self newToolbar: { 
						 (self createNewWindowButtonCorrected).
						 (self createNewWindowButtonSimulated).
						 (self createNewWindowButtonDraft).
						 (self createLabelsOnOff).
						 (self createSelectionButton).
						 (self createCircleButton).
						 (self createLineButton) 
						}.
	dock := self newToolDockingBar.
	dock2 := self newToolDockingBar.
	dock addMorph: tools.
	dock2 addMorph: tools2.