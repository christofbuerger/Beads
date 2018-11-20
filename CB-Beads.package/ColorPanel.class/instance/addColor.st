actions
addColor
	| dialog |
	dialog := ColorSelectorDialogWindow new
		title: 'Choose color';
		selectedColor: self color;
		setProperty: #morphicLayerNumber toValue: 18.
	self openModal: dialog.
	dialog cancelled
		ifFalse: [self addMorphBack: (ColorWell on: dialog selectedColor)]
