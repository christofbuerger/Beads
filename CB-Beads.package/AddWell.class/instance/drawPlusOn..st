drawing
drawPlusOn: aCanvas
	|plusHeight plusWidth|
	plusHeight := self height / 5.
	plusWidth := self width / 5.
	aCanvas fillRectangle: (self bounds insetBy: 6 @ (plusHeight)) color: self plusColor.
	aCanvas fillRectangle: (self bounds insetBy: (plusWidth) @ 6) color: self plusColor.