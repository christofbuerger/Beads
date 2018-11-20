event handling
startDrag: evt	
	WorldState addDeferredUIMessage: [ evt hand grabMorph: self copy ].
