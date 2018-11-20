accessing
drawingArea
	^ drawingArea ifNil: [
		drawingArea := PaintCanvas new]