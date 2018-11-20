as yet unclassified
doDup: evt fromHalo: halo handle: dupHandle

	selectedItems := selectedItems collect: #duplicate.	
	selectedItems do: [:m | self owner addMorph: m. 
		].
	evt hand grabMorph: self.
	selectedItems do: [:m |m borderWidth: 1].
	halo removeAllHandlesBut: dupHandle.	
	
	