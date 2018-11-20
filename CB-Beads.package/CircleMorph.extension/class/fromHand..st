*CB-Beads
fromHand: hand
| p1 opposite circ|
"circ:=CircleMorph fromHand: ActiveHand."

	"wait till guy will press the mouse button"
	hand captureEventsUntil: [:evt |
		evt isMouse ifTrue: [ p1 := (evt cursorPoint)].
		(evt isMouse and: [ evt anyButtonPressed ]) ].
	
	opposite := (Display colorAt: p1) negated. opposite = Color transparent ifTrue: [opposite := Color red].
	circ:=self new color: Color transparent; center: (p1); borderWidth: 3; openInWorld.
	
	hand captureEventsWhile: [:evt |
		  evt isMouse ifTrue:[ 	(p1 dist: (evt position))>0 ifTrue: 
															[circ extent: (((p1 dist: (evt position))*2)@((p1 dist: (evt position))*2)).
															 circ center: p1 ]. 
															 ].
			evt anyButtonPressed	].	
			
	^ circ delete.
	
	
"[true] whileTrue: [
		
		hand captureEventsWhile: [:evt |
			evt isMouse 
				ifTrue: [ evt cursorPoint > (0@0) ifTrue:
					[circ extent: evt cursorPoint].
					evt anyButtonPressed ] 
				ifFalse: [ false ] ]].
		^circ."