pattern finding
pattern: breite
	| abNutzung |
	abNutzung := self erstePerleDerErstenGenutztenZeile: breite.
	^ PatternFinder new beadsRepeatCalcClean: ((self perlenFadenModel allButFirst: (abNutzung-1)) collect: [ :a | a asString ])