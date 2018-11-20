interface building
createToolBarSimul
	toolsSimul := self newToolbar: (Array 
						with: self createNewWindowButtonRotateLeft 
						with: self createNewWindowButtonRotateRight
						
						).
	
	dock addMorph: toolsSimul