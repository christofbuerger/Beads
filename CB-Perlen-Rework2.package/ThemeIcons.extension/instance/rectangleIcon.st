*CB-Perlen-Rework2
rectangleIcon
	"Private - Generated method"
	^icons 
			at: #rectangleIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self rectangleIconContents readStream) ].