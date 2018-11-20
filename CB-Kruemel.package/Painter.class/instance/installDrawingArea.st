initialize-release
installDrawingArea
	self window 
		addMorph: self drawingArea
		fullFrame: ((0@0 corner: 1@1) asLayoutFrame topOffset:  (self menubar minExtent y + self toolbar minExtent y)+3).