initialization
initialize
		
	colorPickerWindow := ColorPanel openAllNamedColors openInWorld.
	defaultPaintColor := Color black.
	self defaultLaenge: 1400.
	self defaultPerlenGroesse: 10.
	perlenFadenViewsOC := OrderedCollection new.
	self initPerlenFadenModel.
	self initPerlenFaden 