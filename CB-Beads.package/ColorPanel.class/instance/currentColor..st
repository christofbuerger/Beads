accessing
currentColor: anObject
	currentColor := anObject.
	Transcript show: ('die aktuelle Malfarbe ist gesetzt worden: ', self currentColor name);cr.
	BeadsAppVars currentPaintColor: self currentColor.