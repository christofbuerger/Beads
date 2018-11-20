as yet unclassified
farbeUpdate: aColor
 self color: aColor.
 label ifNotNil: [label color: aColor contrastingColor].
 farbe:=aColor