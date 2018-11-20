build ui
toolbar
	^ toolbar ifNil: [ | tools |
		tools := self window newToolbar: {
			"self window 
				newButtonFor: self drawingArea
				getState: nil
				action: #clear
				arguments: nil
				getEnabled: nil
				labelForm: (MenuIcons smallNewIcon scaledToSize: 16@16)
				help: 'Clear the drawing area.'.
			self window 
				newButtonFor: self
				getState: nil
				action: #draw
				arguments: nil
				getEnabled: nil
				labelForm: (MenuIcons paintIcon scaledToSize: 16@16)
				help: 'Paint!'."
			self window 
				newButtonFor: self
				getState: nil
				action: #einPaarZyklen
				arguments: nil
				getEnabled: nil
				labelForm: (Smalltalk ui icons iconNamed: #add)
				help: 'Choose a color to paint with.'.
			"self window 
				newButtonFor: self
				getState: nil
				action: #rufeFlaecheAnzeigen
				arguments: nil
				getEnabled: nil
				labelForm: (MenuIcons eyedropperIcon scaledToSize: 16@16)
				help: 'Christofs Test Wegen Zeichnen.'.
			self window 
				newButtonFor: self
				getState: nil
				action: #aaaaektschn
				arguments: nil
				getEnabled: nil
				labelForm: (MenuIcons eyedropperIcon scaledToSize: 16@16)
				help: 'einen Schritt rechnen und neu anzeigen'."
			"self window 
				anstelle des MenuIcons eyedropperIcon ... probieren: UITheme current backIcon
				newButtonFor: self
				getState: nil
				action: #aaaaektschn2
				arguments: nil
				getEnabled: nil
				labelForm: (MenuIcons eyedropperIcon scaledToSize: 16@16)
				help: 'SChreiben auf den Bildschirm'.	"
				
				
		}.
		toolbar := self window newToolDockingBar addMorph: tools]