as yet unclassified
pixelAt: aPoint color: aColor
|aCanvas ds|
aCanvas:=Display getCanvas.
ds:=DisplayScreen new.

aCanvas line: aPoint to: aPoint+(0@0) width: 1 color: aColor.
"(Delay forMilliseconds: 10) wait.
aCanvas line: aPoint to: aPoint+(0@0) width: 5 color: aColor negated.
(Delay forMilliseconds: 10) wait.
aCanvas line: aPoint to: aPoint+(0@0) width: 5 color: aColor."