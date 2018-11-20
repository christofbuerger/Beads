view
correctedAnpassen: breite
|i|
i:=0.
 self correctedViewAnpassBreite: breite.

100 timesRepeat: [  i:=i+1. Transcript show:i.  ].Transcript cr.

 self bounds: (((self morph) submorphBounds origin) corner: ((self morph) submorphBounds corner)+(10@38)).