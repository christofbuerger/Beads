initialization
initialize

	"super initialize."
	"rotationCount:=0.
	self morph: (self myPerlenhalter anzeigenScrollable)."
	fensterInfoMorph:=StringMorph new. fensterInfoMorph contents: 'noch nix'.
	
	self announcer when:WindowAnnouncement send:#fensterRefresh to:self.
	self addMorph: fensterInfoMorph.
	self title: 'BdWindow'.
	self createToolBar.
	self
		addMorph: dock
			fullFrame: ((0@0 corner: 1@0) asLayoutFrame bottomOffset: (dock minExtent y));
			 addMorph:  morph fullFrame: ((0@0 corner: 1@1) asLayoutFrame topOffset: dock minExtent y+3).
			 self fensterInfoMorphRefresh.
	^ self.