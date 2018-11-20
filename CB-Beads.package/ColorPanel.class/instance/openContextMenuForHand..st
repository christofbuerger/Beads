selection
openContextMenuForHand: aHand
	| menu |
	menu := MenuMorph new defaultTarget: self.
		
	menu 
		add: 'Close' selector: #delete;
		addLine;
		add: 'Reset colors' selector: #addDefaultColorsAndPlus.

	menu popUpInWorld