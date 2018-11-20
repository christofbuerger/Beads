accessing
farbe: aFarbAnnouncement
	"aFarbAnnouncement class = FarbeAendernPerleModel new class
		ifTrue: [ 
			farbe := aFarbAnnouncement neueFarbe.
			self color: (Color fromString: farbe) ]
		ifFalse: [ self color: (Color fromString: aFarbAnnouncement) ].	"
			
			farbe := aFarbAnnouncement neueFarbe.	
			self color: (Color fromString: farbe).