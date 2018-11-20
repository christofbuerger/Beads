*CB-Beads
fromHand2: hand
	"Let the user draw a polygon, clicking at each vertex, and ending by clicking within 5 of the first point..."
	"self fromHand: ActiveHand"
	
	| p1 poly oldVerts pN opposite |
	
	"wait till guy will press the mouse button"
	hand captureEventsUntil: [:evt |
		evt isMouse ifTrue: [ p1 := evt cursorPoint].
		(evt isMouse and: [ evt anyButtonPressed ]) ].
	
	opposite := (Display colorAt: p1) negated.
	opposite = Color transparent ifTrue: [opposite := Color red].
	(poly := LineMorph from: p1 to: p1 color: opposite width: 2) openInWorld.
	oldVerts := {p1}.
	
	
		"wait till button release"
		hand captureEventsWhile: [:evt |
			evt isMouse 
				ifTrue: [ 
					pN := evt cursorPoint.
					poly setVertices: (oldVerts copyWith: pN).
					evt anyButtonPressed ] 
				 ].
			^ poly	