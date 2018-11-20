as yet unclassified
labelUpdate: aString
	| font groesse |
	groesse := self extent x.
	font := LogicalFont familyName: 'Source Sans Pro' pointSize: self extent x // 2.5.
	label ifNotNil: [ label delete ].
	label := StringMorph contents: aString font: font.
	StandardFonts buttonFont.
	self addMorph: label.
	label lock.
	self extent: groesse @ groesse.
	label position: self center - (label extent // 2.0)