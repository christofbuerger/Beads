*CB-Perlen-Rework2
cardIcon
	"Private - Generated method"
	^icons 
			at: #cardIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self cardIconContents readStream) ].