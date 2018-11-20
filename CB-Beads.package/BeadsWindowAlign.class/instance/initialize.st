initialization
initialize
   |lya |
	super initialize.
	rotationCount:=0.
	fensterInfoMorph:=StringMorph new. fensterInfoMorph contents: 'noch nix'.
	
	beadWidth == nil ifTrue: [self beadWidth: 18].
  lya:= TableLayout new.
	morph := PerlenHalterMorph new extent: (500@300); color: Color black.
	self announcer when:WindowAnnouncement send:#fensterInfoMorphRefresh to:self.
	"morph on:#mouseMove send:#melden to:self."
	
	morph layoutPolicy: lya.
	morph listDirection: #rightToLeft.
	morph wrapDirection: #topToBottom.
	self addMorph: fensterInfoMorph.
	
	"self addMorph: morph frame: (0@0 corner: 1@1)."

	self extent: (250@500).
	self position: (0@0).
	self title: 'BeadsWindowAlign'.
	
	self createToolBar.
	self
		addMorph: dock
			fullFrame: ((0@0 corner: 1@0) asLayoutFrame bottomOffset: dock minExtent y);
		addMorph: morph 			
			fullFrame: ((0@0 corner: 1@1) asLayoutFrame topOffset: dock minExtent y+3).
			 self fensterInfoMorphRefresh.
			
	
	
	
	^ self.