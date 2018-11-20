pattern finding
ersteZeileMitPerlen: breite
	| erstePerle ersteZeile |
	
	erstePerle:=0.
	[ erstePerle:=erstePerle+1. ((perlenFadenModel at: erstePerle) asString) = 'white'  ] whileTrue.
	
	(erstePerle / breite) fractionPart > 0
		ifTrue: [ ersteZeile := erstePerle // breite + 1 ]
		ifFalse: [ ersteZeile := erstePerle // breite ].
		
	
^ ersteZeile.

