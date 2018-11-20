as yet unclassified
someAntiAliasedPlotRoutines

"void plotLineAA(int x0, int y0, int x1, int y1)
{
   int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
   int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1; 
   int err = dx-dy, e2, x2;                       /* error value e_xy */
   int ed = dx+dy == 0 ? 1 : sqrt((float)dx*dx+(float)dy*dy);

   for ( ; ; ){                                         /* pixel loop */
      setPixelAA(x0,y0, 255*abs(err-dx+dy)/ed);
      e2 = err; x2 = x0;
      if (2*e2 >= -dx) {                                    /* x step */
         if (x0 == x1) break;
         if (e2+dy < ed) setPixelAA(x0,y0+sy, 255*(e2+dy)/ed);
         err -= dy; x0 += sx; 
      } 
      if (2*e2 <= dy) {                                     /* y step */
         if (y0 == y1) break;
         if (dx-e2 < ed) setPixelAA(x2+sx,y0, 255*(dx-e2)/ed);
         err += dx; y0 += sy; 
    }
  }
}
  
Line
Anit-aliased quadratic Bézier curve

This program example draws a segment of an anti-alised quadratic Bézier curve.
void plotQuadBezierSegAA(int x0, int y0, int x1, int y1, int x2, int y2)
{  
   int sx = x2-x1, sy = y2-y1;
   long xx = x0-x1, yy = y0-y1, xy;         /* relative values for checks */
   double dx, dy, err, ed, cur = xx*sy-yy*sx;                /* curvature */

   assert(xx*sx >= 0 && yy*sy >= 0);  /* sign of gradient must not change */

   if (sx*(long)sx+sy*(long)sy > xx*xx+yy*yy) { /* begin with longer part */ 
      x2 = x0; x0 = sx+x1; y2 = y0; y0 = sy+y1; cur = -cur; /* swap P0 P2 */
   }  
   if (cur != 0)
   {                                                  /* no straight line */
      xx += sx; xx *= sx = x0 < x2 ? 1 : -1;          /* x step direction */
      yy += sy; yy *= sy = y0 < y2 ? 1 : -1;          /* y step direction */
      xy = 2*xx*yy; xx *= xx; yy *= yy;         /* differences 2nd degree */
      if (cur*sx*sy < 0) {                          /* negated curvature? */
         xx = -xx; yy = -yy; xy = -xy; cur = -cur;
      }
      dx = 4.0*sy*(x1-x0)*cur+xx-xy;            /* differences 1st degree */
      dy = 4.0*sx*(y0-y1)*cur+yy-xy;
      xx += xx; yy += yy; err = dx+dy+xy;               /* error 1st step */
      do {                              
         cur = fmin(dx+xy,-xy-dy);
         ed = fmax(dx+xy,-xy-dy);           /* approximate error distance */
         ed = 255/(ed+2*ed*cur*cur/(4.*ed*ed+cur*cur)); 
         setPixelAA(x0,y0, ed*fabs(err-dx-dy-xy));          /* plot curve */
         if (x0 == x2 && y0 == y2) return;/* last pixel -> curve finished */
         x1 = x0; cur = dx-err; y1 = 2*err+dy < 0;
         if (2*err+dx > 0) {                                    /* x step */
            if (err-dy < ed) setPixelAA(x0,y0+sy, ed*fabs(err-dy));
            x0 += sx; dx -= xy; err += dy += yy;
         }
         if (y1) {                                              /* y step */
            if (cur < ed) setPixelAA(x1+sx,y0, ed*fabs(cur));
            y0 += sy; dy -= xy; err += dx += xx; 
         }
      } while (dy < dx);              /* gradient negates -> close curves */
   }
   plotLineAA(x0,y0, x2,y2);              /* plot remaining needle to end */
}
  
Ellispe
Anti-aliased thick line

This algorithm draws an anti-aliased line of wd pixel width.
void plotLineWidth((int x0, int y0, int x1, int y1, float wd)
{ 
   int dx = abs(x1-x0), sx = x0 < x1 ? 1 : -1; 
   int dy = abs(y1-y0), sy = y0 < y1 ? 1 : -1; 
   int err = dx-dy, e2, x2, y2;                          /* error value e_xy */
   float ed = dx+dy == 0 ? 1 : sqrt((float)dx*dx+(float)dy*dy);
   
   for (wd = (wd+1)/2; ; ) {                                   /* pixel loop */
      setPixelColor(x0,y0,max(0,255*(abs(err-dx+dy)/ed-wd+1));
      e2 = err; x2 = x0;
      if (2*e2 >= -dx) {                                           /* x step */
         for (e2 += dy, y2 = y0; e2 < ed*wd && (y1 != y2 || dx > dy); e2 += dx)
            setPixelColor(x0, y2 += sy, max(0,255*(abs(e2)/ed-wd+1));
         if (x0 == x1) break;
         e2 = err; err -= dy; x0 += sx; 
      } 
      if (2*e2 <= dy) {                                            /* y step */
         for (e2 = dx-e2; e2 < ed*wd && (x1 != x2 || dx < dy); e2 += dy)
            setPixelColor(x2 += sx, y0, max(0,255*(abs(e2)/ed-wd+1));
         if (y0 == y1) break;
         err += dx; y0 += sy; 
      }
   }
}"