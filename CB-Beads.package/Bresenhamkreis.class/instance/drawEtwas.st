as yet unclassified
drawEtwas
|aCanvas   |
aCanvas:=Display getCanvas.



1 to: 80 by: 0.005 do: [ :i | Transcript show: 300+(i sin*100); tab;show: i*100;cr.
	self pixelAt: (500+(i sin*400))\\400@(i*200)\\800 color: Color blue width: 2.
	 ]