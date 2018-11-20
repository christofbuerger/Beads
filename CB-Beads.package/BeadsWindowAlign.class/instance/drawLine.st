interface building
drawLine
|linePoints line startPoint endPoint|


line:=LineMorph fromHand2: ActiveHand.
"circ openInWorld."
startPoint := line vertices first.
  endPoint := line vertices second.

linePoints:=Bresenhamkreis new linePoints: startPoint to: endPoint.

linePoints do: [ :point | (self findPerleAt: point) ifNotNil: [(self findPerleAt: point) farbeDirekt: BeadsAppVars currentPaintColor name]]