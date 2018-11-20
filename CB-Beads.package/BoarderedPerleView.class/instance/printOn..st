printing
printOn: aStream
	"The receiver prints on aStream in terms of infix notation."

	"super printOn: aStream."
	aStream nextPutAll: 'einePerle '.
	aStream nextPutAll: self farbe