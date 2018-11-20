calculation
punktAnzeigenNeu: punkt
          self christofsPunktFarbig: (punkt at: 1) 
		                              oben: (punkt at: 2) 
		                             gross: punktGroesse 
		                             farbe: (FarbenArrayNeu atIndices0: (Array with: (fArrayA  atIndices0: (Array with:(punkt at: 1) with:(punkt at: 2)))))
		                             farbNr: nil. "(fArrayB  atIndices0: (Array with:i with:j)) "   
		         
		       
	   
    self drawingArea changed.
    self window changed.
    World fullRepaintNeeded.