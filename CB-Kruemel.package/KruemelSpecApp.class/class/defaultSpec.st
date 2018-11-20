specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | 
			col
				newRow: [ :r | 
					r
						add: #menu;
						add: #input width: 60;
						add: #label width: 40 ]
					height: self toolbarHeight;
				newRow: [ :r | 
					r
						add: #input2 width: 60;
						add: #calculationDroplist ]
					height: self toolbarHeight;
				add: #text ];
		yourself