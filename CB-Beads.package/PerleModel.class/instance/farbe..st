accessing
farbe: aColor
  |aF nF|
	aF := self farbe.
	nF := aColor.
	farbe := aColor.
	self modelGeaendertAnnouncer announce: (FarbeAendernPerleModel new alteFarbe: aF; neueFarbe: nF).
	self modelOderPerleGeaendertAnnouncer announce: (FarbeAendernPerleModel new alteFarbe: aF; neueFarbe: nF)
	