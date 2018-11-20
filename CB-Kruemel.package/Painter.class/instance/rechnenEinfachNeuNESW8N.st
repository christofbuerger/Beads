as yet unclassified
rechnenEinfachNeuNESW8N
	1 to: simGroesse do: [ :j | 
		1 to: simGroesse do: [ :i | 
			(fArrayA 	eightNeighbors: {i . j})
				do: [ :e | (fArrayA atIndices: e) = (((fArrayA atIndices: {i . j}) + 1) \\ zustaende)
						ifTrue: [ fArrayB atIndices: {i . j}
								put: (fArrayA atIndices: e) ] ] ] ]