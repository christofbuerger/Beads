event handling
mouseDown: evt
	evt ifNotNil: [ 
		self farbeDirekt: BeadsAppVars currentPaintColor name.
		evt hand waitForClicksOrDrag: self event: evt ].
	^ super mouseDown: evt.




"mouseDown: evt
   Transcript show: 'Maus auf BoarderedPerleView Objekt gecklickt!!';cr.
  self farbeDirekt: BeadsAppVars currentPaintColor name.
	^ super mouseDown: evt.
	"

