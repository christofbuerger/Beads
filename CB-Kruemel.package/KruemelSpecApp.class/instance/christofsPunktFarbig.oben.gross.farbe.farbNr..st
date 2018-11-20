accessing
christofsPunktFarbig: links oben: oben gross: groesse farbe: farbe farbNr: farbNummer
	
	"self drawingArea  colorAt: links@oben put: farbe."
	
	
	0 to: groesse do: 
		[ :i | 0 to: groesse do: 
			[ :j | self drawingArea  colorAt: (links+i)@(oben+j) put: farbe. ] ].
	