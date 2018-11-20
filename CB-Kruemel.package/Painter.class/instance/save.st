actions
save
	self window fileSave: 'Select a bitmap to load' extensions: #('png'  'jpg').
	self window deny: 'It is only a demo, you cannot save bitmap yet'