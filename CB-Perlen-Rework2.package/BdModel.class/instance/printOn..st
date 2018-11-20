as yet unclassified
printOn: aStream
	"The receiver prints on aStream in terms of infix notation."

	super printOn: aStream.
	aStream nextPutAll: ' ';
	        nextPutAll: self farbe asString;
				 nextPutAll: '  ';
	        nextPutAll: self nummer asString.