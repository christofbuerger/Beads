interface building
drawCircle
	| circ cent rad circlePoints |
	circ := CircleMorph fromHand: ActiveHand.
	"circ openInWorld."
	cent := circ center.
	rad := circ extent x.
	circlePoints := Bresenhamkreis new circlePoints: cent radius: rad / 2.
	circlePoints
		do: [ :point | (self findPerleAt: point) ifNotNil: [ (self findPerleAt: point) farbe: BdAp currentPaintColor ] ]