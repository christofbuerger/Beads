initialization
initialize
	super initialize.
	over := false.
	self
 		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		hResizing: #rigid; 
		vResizing: #shrinkWrap;
		layoutInset: (Margin top: 5 left: 2 bottom: 2 right: 2); 
		cellInset: 1.
	self addDefaultWellsAndPlus.
	self setProperty: #morphicLayerNumber toValue: 20