initialize-release
installMenubar
	self window 
		addMorph: self menubar
		fullFrame: (
			LayoutFrame
				fractions: (0@0 corner: 1@0)
				offsets: (0@0 corner:  0@self menubar minExtent y))