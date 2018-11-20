event handling
startDrag: evt 
	"Drag my target without removing it from its owner."
	
	WorldState addDeferredUIMessage: [ evt hand grabMorph: self ].
