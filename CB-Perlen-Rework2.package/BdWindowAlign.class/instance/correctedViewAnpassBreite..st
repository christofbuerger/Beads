view
correctedViewAnpassBreite: breite
	| hoehe horizontal einsDazu |
	(self perlenFadenModel size / breite) fractionPart > 0
		ifTrue: [ einsDazu := 1 ]
		ifFalse: [ einsDazu := 0 ].
	horizontal := (breite + 1) * beadWidth + 10.
	hoehe := (einsDazu + (self perlenFadenModel size // breite)) * beadWidth + 38 + (self dock minExtent y + 3).
	
	self extent: horizontal @ hoehe	
		
		"hoehe := (einsDazu + (self perlenFadenModel size // breite)) * beadWidth + 38 + (self dock minExtent y+3)."