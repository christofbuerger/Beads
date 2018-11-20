farben
farbPunktAt: aPoint farbe: farbe
	
	               self drawingArea area 
		             fillRectangle: (Rectangle origin:  aPoint extent: 1@1)
		             color: farbe.
		             self drawingArea changed. 