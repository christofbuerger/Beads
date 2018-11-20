accessing
farbeDirekt: aColorString
  |aF|
	aF := self color name asString.
	self color: (Color fromString: aColorString).
	self perleGeaendertAnnouncer announce: (FarbeAendernPerleView new neueFarbe: aColorString; alteFarbe: aF).
	self modelOderPerleGeaendertAnnouncer announce: (FarbeAendernPerleView new neueFarbe: aColorString; alteFarbe: aF).
	"self perleGeaendertAnnouncer announce: (FarbeAendernPerleView new perleViewNeueFarbe: aColorString; perleViewAlteFarbe: aF)."
	
	