event handling
click: evt
	"Default behavior: Show a context menu if right mouse button was clicked."
	
	evt yellowButtonPressed ifTrue: [
		self openContextMenuForHand: evt hand.
		evt wasHandled: true.]