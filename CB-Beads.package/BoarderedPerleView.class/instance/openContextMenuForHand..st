selection
openContextMenuForHand: aHand
	| menu subMenu|
	menu := MenuMorph new defaultTarget: self.
	subMenu := MenuMorph new defaultTarget: self.
	subMenu add: 'to front' selector: #insertRow;
		add: 'up' selector: #bla;
		add: 'down' selector: #bla;
		add: 'to back' selector: #bla.
		
	menu add: 'add' selector: #insertRow;
		add: 'connect' selector: #bla;
		add: 'connect smooth' selector: #bla;
		addLine;
		add: 'Z-order' subMenu: subMenu.
	menu items first icon: Smalltalk ui theme icons deleteIcon .
	menu items second icon: MDIcons default connectorIcon .
	menu items third icon: MDIcons default connectorIcon .

	menu popUpInWorld






	"| menu |
	menu := MenuMorph new defaultTarget: self.
		
	menu 
		add: 'blabla' selector: #nix;
		add: 'was anderes' selector: #anders.

	menu popUpInWorld"