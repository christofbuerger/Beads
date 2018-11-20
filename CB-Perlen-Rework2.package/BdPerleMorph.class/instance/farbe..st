accessing
farbe: aColor
	self perleModel farbe: aColor.
	label ifNotNil: [label color: self color contrastingColor].
	farbe:=aColor