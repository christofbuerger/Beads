selection
openContextMenuForHand: aHand
	| menu |
	menu := MenuMorph new defaultTarget: self.
		
	menu 
		add: 'Close' selector: #delete;
		addLine;
		add: self restoreName selector: #addDefaultWellsAndPlus.

	menu popUpInWorld