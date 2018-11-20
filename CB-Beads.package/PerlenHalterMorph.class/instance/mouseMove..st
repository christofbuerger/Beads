as yet unclassified
mouseMove: evt

  Transcript show: evt;cr.
  Transcript show: (self morphsAt: (evt startPoint));cr.
  
((self morphsAt: (evt startPoint)) select: [ :x | x class name = 'BoarderedPerleView' ])  do: [:x| x farbeDirekt: BeadsAppVars currentPaintColor name].

	super mouseMove: evt.
	
	
	