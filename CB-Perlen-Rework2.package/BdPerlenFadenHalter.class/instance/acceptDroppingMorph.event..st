as yet unclassified
acceptDroppingMorph: aMorph event: evt
	"This message is sent when a morph is dropped onto a morph that has agreed to accept the dropped morph by responding 'true' to the wantsDroppedMorph:Event: message. This default implementation just adds the given morph to the receiver."
(aMorph respondsTo: #isBdPerleMorph) 

ifTrue: [	
(self perlenFadenModel) addPerleFromMorph: aMorph.
"self perlenFadenAnzeigen."
aMorph dismissMorph.
] .


self addMorphBack: aMorph.

