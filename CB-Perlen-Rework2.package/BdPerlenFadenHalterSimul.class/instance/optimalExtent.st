as yet unclassified
optimalExtent
"|ex|
perleWidth:=(self submorphs at: 1) extent x.

self submorphBounds extent

self extent: ((self extent x//perleWidth)*perleWidth)+2@(((self submorphs size//(self extent x//perleWidth))+1)*perleWidth)."
|ex|
ex:=self fadenhaltercorr submorphBounds extent.
self extent: ex+(2@2)