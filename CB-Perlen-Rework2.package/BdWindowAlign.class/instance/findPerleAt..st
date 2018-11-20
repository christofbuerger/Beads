interface building
findPerleAt: aPoint
|perle|

perle:=((self morphsAt: (aPoint)) select: [ :x | x class name = 'BdPerleMorph' ]).
perle size > 0 ifTrue: [ ^ perle first ] ifFalse: [ ^ nil ]