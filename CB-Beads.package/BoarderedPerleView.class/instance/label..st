accessing
label: aString 
|font|

font:=LogicalFont familyName: 'Helvetica CY Plain' pointSize: 5.
label ifNotNil: [label delete].
	label := StringMorph contents: aString font: font.
	"StandardFonts buttonFont."
	
	label position: self center - (label extent // 2).
	self addMorph: label.
	label lock.
	self extent: self defaultGroesse.