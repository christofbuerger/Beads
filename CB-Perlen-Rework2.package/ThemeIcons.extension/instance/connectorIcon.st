*CB-Perlen-Rework2
connectorIcon
	"Private - Generated method"
	^icons 
			at: #connectorIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self connectorIconContents readStream) ].