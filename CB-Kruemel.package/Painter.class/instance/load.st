build ui
load
	self window fileOpen: 'Select a bitmap to load' extensions: #('png'  'jpg').
	self window deny: 'It is only a demo, you cannot load bitmap yet'