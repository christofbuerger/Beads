accessing
menubar
	^ menubar ifNil: [ | menu |
		menu := self window newMenu.
		menu 
			addToggle: 'Load'
			target: self
			selector: #load.
		menu 
			addToggle: 'Save'
			target: self
			selector: #save.
		menubar := self window newToolDockingBar.
		menubar 
			add: 'File'
			font: self window theme menuBarFont
			icon: nil
			help: 'File operations'
			subMenu: menu.
		menubar
		]