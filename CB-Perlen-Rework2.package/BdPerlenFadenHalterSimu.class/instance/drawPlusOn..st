as yet unclassified
drawPlusOn: aCanvas
	|shift|

   shift:=3*(self bounds scaleBy: (0.25@1)) extent x. 
	aCanvas fillRectangle: (self bounds scaleBy: (0.25@1)) color:  ((Color veryVeryLightGray) alpha: 0.95).
	aCanvas fillRectangle: ((self bounds scaleBy: (0.25@1)) translateBy: (shift@0) ) color:  ((Color veryVeryLightGray) alpha: 0.95).
	