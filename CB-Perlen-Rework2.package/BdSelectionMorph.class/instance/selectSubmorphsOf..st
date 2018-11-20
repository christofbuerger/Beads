as yet unclassified
selectSubmorphsOf: aMorph
	| newItems removals |
	"Transcript show: ' Einstieg: selectSubmorphsOf:  '; show: aMorph;cr."
	"super borderWidth: 2."
	newItems := aMorph submorphs
		select:
			[ :m | (bounds containsRect: m fullBounds) and: [ m ~~ self and: [ (m isKindOf: HaloMorph) not ] ] ].
	otherSelection ifNil: [ ^ selectedItems := newItems ].
	removals := newItems intersection: itemsAlreadySelected.
	otherSelection setSelectedItems: (itemsAlreadySelected copyWithoutAll: removals).
	selectedItems := newItems copyWithoutAll: removals