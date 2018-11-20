build ui
window
 	^ window ifNil: [
		window := StandardWindow labelled: 'Painter'.
		window announcer
			on: WindowResizing 
			do: [:ann | self drawingArea extent: ann newSize].
		window]