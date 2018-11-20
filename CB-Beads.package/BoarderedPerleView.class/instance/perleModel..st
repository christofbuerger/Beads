accessing
perleModel: anObject
	perleModel := anObject.
	
	perleGeaendertAnnouncer:= (perleModel perleGeaendertAnnouncer).
	modelGeaendertAnnouncer:= (perleModel modelGeaendertAnnouncer).
	modelOderPerleGeaendertAnnouncer:=(perleModel modelOderPerleGeaendertAnnouncer).
	self subscribeModelGeaendertAnnouncer.
	self subscribePerleGeaendertAnnouncer.
	self subscribeModelOderPerleGeaendertAnnouncer.
	self farbeDirekt: anObject farbe.
	