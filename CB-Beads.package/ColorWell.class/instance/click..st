event handling
click: evt
	"Default behavior: Show a context menu if right mouse button was clicked."
	evt redButtonPressed ifTrue: [
		"Transcript show: 'Auswahlfarbe: ';show: (self color);cr.
		Transcript show: 'wer ist mein owner?: '; show: self owner;cr."
		evt wasHandled: false. 
		self owner currentColor: self color.].
	
	evt yellowButtonPressed ifTrue: [
		self openContextMenuForHand: evt hand.
		evt wasHandled: false.]