as yet unclassified
extent: newExtent
	super extent: newExtent.
	self selectSubmorphsOf: self iDoSelectFrom
	"Transcript show: 'extend vom SelectionTestMorph:  '; show: newExtent;cr."
	"super borderWidth: 5"