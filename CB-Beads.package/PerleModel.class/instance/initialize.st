as yet unclassified
initialize
	super initialize.
	farbe:= 'white'.
	
	self subscribeModelGeaendertAnnouncer.
	self subscribePerleGeaendertAnnouncer.
	self subscribeModelOderPerleGeaendertAnnouncer.
	^ self.