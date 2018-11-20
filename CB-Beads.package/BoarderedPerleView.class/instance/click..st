event handling
click: evt
	"Default behavior: Show a context menu if right mouse button was clicked."
	evt redButtonPressed ifTrue: [
		Transcript show: 'redButtonClickedOnBoarderedColorView';cr.
		evt wasHandled: false. 
		"self owner currentColor: self color".].
	
	evt yellowButtonPressed ifTrue: [
		self openContextMenuForHand: evt hand.
		evt wasHandled: false.]