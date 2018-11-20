calculation
rechnenEinfachNeuNESW4NshufN

	
  (1 to: simGroesse) do: [ :j | 
		(1 to: simGroesse) do: [ :i | 
			(fArrayA 	fourNeighbors: {i . j})
				do: [ :e | (fArrayA atIndices: e) = (((fArrayA atIndices: {i . j}) + 1) \\ zustaende)
						ifTrue: [ fArrayA atIndices: {i . j}
								put: (fArrayA atIndices: e) ] ] ] ]