as yet unclassified
drawCircleAtCenter: aPoint radius: radius color: aColor
|aCanvas d x y|
aCanvas:=Display getCanvas.
d:=((5-(radius*4))/4) asInteger.
x:=0.
y:=radius.

[
	Transcript show: 'x: '; show: x;tab;tab; show: ' y: '; show: y;cr.
	
self pixelAt:(((aPoint x) + x)@((aPoint y)+y)) color: aColor.
self pixelAt:(((aPoint x) + x)@((aPoint y)-y)) color: aColor.
self pixelAt:(((aPoint x) - x)@((aPoint y)+y)) color: aColor.
self pixelAt:(((aPoint x) - x)@((aPoint y)-y)) color: aColor.
self pixelAt:(((aPoint x) + y)@((aPoint y)+x)) color: aColor.
self pixelAt:(((aPoint x) + y)@((aPoint y)-x)) color: aColor.
self pixelAt:(((aPoint x) - y)@((aPoint y)+x)) color: aColor.
self pixelAt:(((aPoint x) - y)@((aPoint y)-x)) color: aColor.

(d<0) ifTrue: [ d:=d+((2*x)+1) ] ifFalse: [ d:=d+((2*(x-y))+1). y:=y-1].
x:=x+1.

] doWhileTrue: [x<=(y)].
^aPoint.


"void plotCircle(int xm, int ym, int r)
{
   int x = -r, y = 0, err = 2-2*r; /* II. Quadrant */ 
   do {
      setPixel(xm-x, ym+y); /*   I. Quadrant */
      setPixel(xm-y, ym-x); /*  II. Quadrant */
      setPixel(xm+x, ym-y); /* III. Quadrant */
      setPixel(xm+y, ym+x); /*  IV. Quadrant */
      r = err;
      if (r <= y) err += ++y*2+1;           /* e_xy+e_y < 0 */
      if (r > x || err > y) err += ++x*2+1; /* e_xy+e_x > 0 or no 2nd y-step */
   } while (x < 0);
}"
