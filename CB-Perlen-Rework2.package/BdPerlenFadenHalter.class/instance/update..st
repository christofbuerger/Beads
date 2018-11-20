as yet unclassified
update: anAspect
	|breite perleWidth|
	perleWidth:=(self submorphs at: 1) extent x.
	"self halt."
	"super update: anAspect."
	breite := (anAspect extent x - 18)//perleWidth.
self optimalExtentBreite: breite