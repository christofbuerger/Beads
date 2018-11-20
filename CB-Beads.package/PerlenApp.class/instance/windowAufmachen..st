as yet unclassified
windowAufmachen: breite
	| bwa |
	bwa := BeadsWindowAlign new
		beadWidth: self defaultPerlenGroesse;
		openInWorld.
	bwa meineApp: self.
	bwa perlenFadenModel: self perlenFadenModel.
	bwa perleViewAnzeigen: self perlenFadenModel.
	^ bwa draftViewAnpassBreite: breite