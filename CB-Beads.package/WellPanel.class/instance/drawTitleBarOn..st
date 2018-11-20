drawing
drawTitleBarOn: aCanvas

	aCanvas drawString: self title at: self left+2 @ self top +2  
		font: (LogicalFont familyName: self familyName pointSize: 9)
		color: self titleTextColor 