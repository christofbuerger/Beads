as yet unclassified
drawCircleAtCenter: aPoint radius: radius
|aCanvas d x y|
aCanvas:=Display getCanvas.
d:=(5-(radius*4))/4.
x:=0.
y:=radius.

aCanvas line: aPoint to: aPoint+(0@0) width: 1 color: Color blue.
 
		"do {
			image.setPixel(centerX + x, centerY + y, circleColor);
			image.setPixel(centerX + x, centerY - y, circleColor);
			image.setPixel(centerX - x, centerY + y, circleColor);
			image.setPixel(centerX - x, centerY - y, circleColor);
			image.setPixel(centerX + y, centerY + x, circleColor);
			image.setPixel(centerX + y, centerY - x, circleColor);
			image.setPixel(centerX - y, centerY + x, circleColor);
			image.setPixel(centerX - y, centerY - x, circleColor);
			if (d < 0) {
				d += 2 * x + 1;
			} else {
				d += 2 * (x - y) + 1;
				y--;
			}
			x++;
		} while (x <= y);
 
	}
}"