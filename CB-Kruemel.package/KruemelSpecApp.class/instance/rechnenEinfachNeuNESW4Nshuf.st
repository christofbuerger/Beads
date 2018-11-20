calculation
rechnenEinfachNeuNESW4Nshuf
	|horizontal vertikal horiScr vertiScr|
	
	horizontal := (1 to: simGroesse) asArray.
	vertikal   := (1 to: simGroesse) asArray.
	horiScr    := horizontal shuffled.
	vertiScr   := vertikal shuffled.
	
  horiScr do: [ :j | 
		vertiScr do: [ :i | 
			(fArrayA 	fourNeighbors: {i . j}) shuffled
				do: [ :e | (fArrayA atIndices: e) = (((fArrayA atIndices: {i.j}) + 1) \\ zustaende)
						ifTrue: [ fArrayA atIndices: {i.j}
								put: (fArrayA atIndices: e).
								
								
								self christofsPunktFarbigA: (e at: 1) * punktGroesse 
		                              oben: (e at: 2)  * punktGroesse 
		                             gross: punktGroesse 
		                             farbe: (FarbenArrayNeu atIndices0: (Array with: (fArrayA  atIndices: e)))
		                             farbNr: nil. "(fArrayB  atIndices0: (Array with:i with:j)) "         					
								
								 ] ] ] ].
				
			
		
	