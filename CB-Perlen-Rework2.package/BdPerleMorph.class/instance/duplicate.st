as yet unclassified
duplicate
	"Make and return a duplicate of the receiver"

	| newMorph  |
	"((topRend := self topRendererOrSelf) ~~ self) ifTrue: [^ topRend duplicate]."
	newMorph := self veryDeepCopy.
	"newMorph arrangeToStartStepping."
		newMorph privateOwner: nil. "no longer in world"
		newMorph perleModel addDependent: newMorph.
		^ newMorph