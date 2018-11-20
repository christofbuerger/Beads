as yet unclassified
initialize
  super initialize.
   self fadenhaltercorr: BdPerlenFadenHalterCorr new.
   self myPerlenhalter: self fadenhaltercorr.
	self coverBauen.
	self borderColor: Color black.
	self borderWidth: 3.
	self myPerlenhalter: self.