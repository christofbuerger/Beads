instance creation
openOn: colors
	^self new
		defaultValues: colors;
		changed;
		openInWorld