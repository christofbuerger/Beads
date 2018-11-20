as yet unclassified
openContextMenuForHand: aHand
	| menu subMenu clickPoint|
	
	clickPoint:=aHand lastEvent cursorPoint. 
	
	menu := MenuMorph new defaultTarget: self.
	subMenu := MenuMorph new defaultTarget: self.
	subMenu add: 'insertRowHere' selector: #insertRowAtPoint: argument: clickPoint;
		add: 'up' selector: #bla;
		add: 'down' selector: #bla;
		add: 'to back' selector: #bla.
		
	menu add: 'insertRowHere' selector: #insertRowAtPoint: argument: clickPoint;
		add: 'connect' selector: #bla;
		add: 'connect smooth' selector: #bla;
		addLine;
		add: 'Z-order' subMenu: subMenu.
	menu items first icon: Smalltalk ui theme icons deleteIcon .
	menu items second icon: MDIcons default connectorIcon .
	menu items third icon: MDIcons default connectorIcon .

	menu popUpInWorld