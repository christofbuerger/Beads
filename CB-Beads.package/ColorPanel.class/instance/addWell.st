actions
addWell
	| dialog |
	dialog := ColorSelectorDialogWindow new
		title: 'Choose color';
		selectedColor: self color;
		setProperty: #morphicLayerNumber toValue: 18.
	self openModal: dialog.
	dialog cancelled
		ifFalse: [self addMorphBack: ((self wellClass on: dialog selectedColor)
				panel: self;
				yourself)]
