as yet unclassified
plotLinefrom: startPoint to: endPoint
|x0 y0 x1 y1 dx dy err sx sy e2 | 

x0:=startPoint x. y0:=startPoint y.
x1:=endPoint x. y1:=endPoint y.

dx:=(x1-x0) abs.  dy:=((y1-y0) abs) negated.
x0<x1 ifTrue: [ sx:=1 ] ifFalse: [ sx:=-1 ].
y0<y1 ifTrue: [ sy:=1 ] ifFalse: [ sy:=-1 ].
err:=dx+dy.
e2:=0.

[
	self pixelAt:(x0@y0) color: (Color red).
	e2:=2*err.
	 (e2 >= dy) ifTrue: [ err:= err + dy. x0 := x0 + sx].
   (e2 <= dx) ifTrue: [ err:= err + dx. y0 := y0 + sy]. 
	]
doWhileFalse: [ (x0=x1) & (y0=y1)].