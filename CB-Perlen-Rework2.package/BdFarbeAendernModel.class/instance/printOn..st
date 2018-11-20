as yet unclassified
printOn: aStream 
    "The receiver prints on aStream in terms of infix notation." 
    "super printOn: aStream."
		aStream nextPutAll: 'EinFarbaenderungsAnnouncement - Model: '; nextPutAll: self alteFarbe; nextPutAll: ' ';
		nextPutAll: self neueFarbe.