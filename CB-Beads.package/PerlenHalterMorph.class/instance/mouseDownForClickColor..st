as yet unclassified
mouseDownForClickColor: evt

((self morphsAt: (evt cursorPoint)) select: [ :x | x class name = 'BoarderedPerleView' ])  do: [:x| x farbeDirekt: BeadsAppVars currentPaintColor name].
evt hand waitForClicksOrDrag: self event: evt.




	^ super mouseDown: evt.