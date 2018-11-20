as yet unclassified
circlePoints: aPoint radius: radius
|pointsCollection d x y|
pointsCollection:=OrderedCollection new.
d:=((5-(radius*4))/4) asInteger.
x:=0.
y:=radius.

[
	Transcript show: 'x: '; show: x;tab;tab; show: ' y: '; show: y;cr.
	
pointsCollection add:(((aPoint x) + x)@((aPoint y)+y)) .
pointsCollection add:(((aPoint x) + x)@((aPoint y)-y)) .
pointsCollection add:(((aPoint x) - x)@((aPoint y)+y)) .
pointsCollection add:(((aPoint x) - x)@((aPoint y)-y)) .
pointsCollection add:(((aPoint x) + y)@((aPoint y)+x)) .
pointsCollection add:(((aPoint x) + y)@((aPoint y)-x)) .
pointsCollection add:(((aPoint x) - y)@((aPoint y)+x)) .
pointsCollection add:(((aPoint x) - y)@((aPoint y)-x)) .

(d<0) ifTrue: [ d:=d+((2*x)+1) ] ifFalse: [ d:=d+((2*(x-y))+1). y:=y-1].
x:=x+1.

] doWhileTrue: [x<=(y)].
^ pointsCollection.
