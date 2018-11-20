initialization
initializeWidgets
	menu := MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'File';
						icon: Smalltalk ui icons openIcon;
						subMenu: self subMenu ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Open file';
						icon: Smalltalk ui icons openIcon;
						action: [ Transcript show: 'huhu' ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'komplettZyklusSingle';
						icon: Smalltalk ui icons smallSaveIcon;
						action: [ self komplettZyklusSingle. self inform: 'komplettZyklusSingle'.
							Transcript
								show: 'ein Zyklus';
								cr ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'FlaecheAnzeigen';
						icon: Smalltalk ui icons smallPrintIcon;
						action: [ self flaecheAnzeigenNeu. self inform: 'FlaecheAnzeigen' ] ] ];
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'EinPaarZyklen10';
						icon: Smalltalk ui icons smallUndoIcon;
						action: [ self einPaarZyklen: 10.
							self inform: 'EinPaarZyklen10' ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Redo';
						icon: Smalltalk ui icons smallRedoIcon;
						action: [ self inform: 'Redo' ] ] ].	";"
	
	menu applyTo: self.
	input := TextInputFieldModel new.
	input2 := TextInputFieldModel new.
	label := LabelModel new label: 'blabla'.
	text := self newImage.
	text image: self drawingArea.
	self initializeDroplist.
	self focusOrder add: text