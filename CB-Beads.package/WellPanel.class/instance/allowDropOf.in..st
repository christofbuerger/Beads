event handling
allowDropOf: aWell in: aMorph
	allowDropBlock ifNil: [ 
		"If you support it, you can have it"
		^aMorph respondsTo: aWell dropSelector ]
	ifNotNil: [ ^allowDropBlock value: aWell value: aMorph ]