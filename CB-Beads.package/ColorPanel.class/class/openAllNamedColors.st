instance creation
openAllNamedColors
	^self new defaultValues: (Color registeredColorNames collect: [ :colorSelector| Color named: colorSelector ]).
