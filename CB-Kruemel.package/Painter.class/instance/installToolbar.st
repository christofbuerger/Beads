initialize-release
installToolbar
	self window 
		addMorph: self toolbar
		fullFrame: (
			LayoutFrame
				fractions: (0@0 corner: 1@0)
				offsets: (0@self menubar minExtent y corner:  0@ self menubar minExtent y + self toolbar minExtent y))