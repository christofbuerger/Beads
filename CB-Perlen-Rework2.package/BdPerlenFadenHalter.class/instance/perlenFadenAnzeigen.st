as yet unclassified
perlenFadenAnzeigen
	self perlenWeg.
	1 to: self perlenFadenModel size do:
		[ :i | 
		self
			addMorphBack:
				((BdPerleMorph newMitModel: (perlenFadenModel at: i))
					label: i asString;
					farbe: (perlenFadenModel at: i) farbe) ].
	self perlenSize: self perlenSize 