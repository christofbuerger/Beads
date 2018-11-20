menu
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Painter')
			parent: #Tools;
			icon: (Smalltalk ui icons iconNamed: #add);
			action:[self new]; 
			help: 'Painter example from Pharo CollaboractiveBook'..