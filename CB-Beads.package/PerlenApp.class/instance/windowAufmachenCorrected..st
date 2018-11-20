as yet unclassified
windowAufmachenCorrected: breite
	| bwa |
	bwa := BeadsWindowAlign new
		beadWidth: self defaultPerlenGroesse;
		openInWorld.
	bwa meineApp: self.
	bwa perlenFadenModel: self perlenFadenModel.
	bwa correctedView: (self perlenFadenViewsOC at: 1) breite: breite.
	^ bwa correctedViewAnpassBreite: breite