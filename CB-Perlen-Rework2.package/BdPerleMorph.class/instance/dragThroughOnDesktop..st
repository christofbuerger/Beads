as yet unclassified
dragThroughOnDesktop: evt
	"Draw out a selection rectangle"

	| selection |
	selection := (BdSelectionMorph newBounds: (evt cursorPoint extent: 8 @ 8)) borderWidth: 4.
	self owner addMorph: selection.
	selection iDoSelectFrom: self owner.
	self owner sel: selection.
	^ selection extendByHand: evt hand