ph:=BdPerlenFadenHalter new.  
ph openInWorld; extent: 200@400.
ph comeToFront.
ph optimalExtent.
ph submorphs bounds.
ph bounds.
 "(18.0@84.0) corner: (420.0@524.0)"
ph layoutBounds.

BdAp currentPaintColor.
BdAp currentPaintColor: Color paleGreen.
Color.
pm:=BdModel new.
ph extent.
ph extent: ((ph extent x//40)*40)+2@(((ph submorphs size//(ph extent x//40))+1)*40).
Morph.
p1:=BdPerleMorph newMitModel: pm.
p2:=BdPerleMorph newMitModel: pm.
p3:=BdPerleMorph newMitModel: pm.
p4:=BdPerleMorph newMitModel: pm.
t:=ColorSelectorDialogWindow new open.
BdAp currentPaintColor: t selectedColor.
1 to: 100 do: [ :i | ph addMorphBack:( (BdPerleMorph newMitModel: BdModel new) label: i asString). ].
ph submorphs first farbe: Color red.
HaloMorph.
100//8.
p1 subscribeAnnouncements.
p2 subscribeAnnouncements.
p1 perleModel.
p1 perleModel announcer.
ph submorphBounds extent.
 "(480@360)"
Morph new openInWorld extent: ph submorphBounds extent.
ph submorphBounds extent. 
p1 openInWorld.
p2 openInWorld.
p3 openInWorld.
p4 openInWorld.
p1 extent: 50@50.
p1 comeToFront.
p1 color.

pm farbe: Color green.
p1 farbe: Color white.
p4 farbe: Color paleGreen.
p1 label: '1'.
p2 label: '2'.