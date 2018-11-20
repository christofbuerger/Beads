event handling
mouseEnterDragging: evt
evt ifNotNil: [ 
     
		self farbeDirekt: BeadsAppVars currentPaintColor name.
		evt wasHandled: false.
		"evt hand waitForClicksOrDrag: self event: evt" ]




"mouseDown: evt
   Transcript show: 'Maus auf BoarderedPerleView Objekt gecklickt!!';cr.
  self farbeDirekt: BeadsAppVars currentPaintColor name.
	^ super mouseDown: evt.
	"

