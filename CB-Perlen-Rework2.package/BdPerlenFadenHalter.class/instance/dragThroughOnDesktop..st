as yet unclassified
dragThroughOnDesktop: evt
	"Draw out a selection rectangle"

	| selection |
	selection := (BdSelectionMorph newBounds: (evt cursorPoint extent: 8 @ 8)) borderWidth: 0.
	self layoutPolicy: nil.
	self addMorph: selection.
	selection iDoSelectFrom: self.
	sel := selection.
	^ selection extendByHand: evt hand