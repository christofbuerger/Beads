as yet unclassified
labelAn: anAnnouncement
 | nN font groesse|

nN:=anAnnouncement neueNummer asString.

groesse:=self extent x.
font:=LogicalFont familyName: 'Helvetica CY Plain' pointSize: self extent x//(2.4).
label ifNotNil: [label delete].
	label := StringMorph contents: nN font: font.
	"StandardFonts buttonFont."
	
	
	self addMorph: label.
	label lock.
	self extent: groesse@groesse.
	label position: self center - (label extent // 2.01).
