selection
openContextMenuForHand: aHand
	| menu |
	menu := MenuMorph new defaultTarget: self.
		
	menu 
		add: 'Delete' selector: #delete.

	menu popUpInWorld