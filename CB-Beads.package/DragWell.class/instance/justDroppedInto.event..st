actions
justDroppedInto: aCardMorph event: evt
	aCardMorph  = self panel ifFalse: [  
		aCardMorph perform: self dropSelector with: self dropValue].
	self delete