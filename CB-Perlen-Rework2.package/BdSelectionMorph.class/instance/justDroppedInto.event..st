as yet unclassified
justDroppedInto: newOwner event: evt

	selectedItems isEmpty ifTrue:
		["Hand just clicked down to draw out a new selection"
		^ self extendByHand: evt hand].
	dupLoc ifNotNil: [dupDelta := self position - dupLoc].
	selectedItems do: [:m |  
		self defer:
			[m referencePosition: (newOwner localPointToGlobal: m referencePosition).
			newOwner handleDropMorph:
				(DropEvent new setPosition: evt cursorPoint contents: m hand: evt hand).
				]].
		
		self dismissMorph.
		evt wasHandled: true.
		newOwner layoutPolicy: TableLayout new.
		
		newOwner perlenFadenModel changed: #nummern with: self.
		newOwner perlenSize: newOwner perlenSize.
		"newOwner optimalExtentBreite: newOwner breite."
		
		
		
	
	