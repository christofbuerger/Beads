drawing
drawTitleBarOn: aCanvas

	aCanvas drawString: '' at: self left+2 @ self top +2  
		font: (LogicalFont familyName: self familyName pointSize: 9)
		color: Color gray 