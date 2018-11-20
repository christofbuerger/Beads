accessing
modelGeaendertAnnouncer
	^ modelGeaendertAnnouncer ifNil: [modelGeaendertAnnouncer := Announcer new]
	