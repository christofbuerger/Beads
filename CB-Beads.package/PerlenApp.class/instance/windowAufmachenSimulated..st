as yet unclassified
windowAufmachenSimulated: breite
	| bwa |
	bwa := BeadsWindowAlign new
		beadWidth: self defaultPerlenGroesse;
		openInWorld.
	bwa perlenFadenModel: self perlenFadenModel.
	bwa perleViewSimulatedAnzeigen: self perlenFadenModel breite: breite offset: 0.
	^ bwa perleViewSimulatedAnpassBreite: breite