as yet unclassified
findPerleAt: aPoint
|perle|

perle:=((self morphsAt: (aPoint)) select: [ :x | x class name = 'BoarderedPerleView' ]).
perle size > 0 ifTrue: [ ^ perle first ] ifFalse: [ ^ nil ]