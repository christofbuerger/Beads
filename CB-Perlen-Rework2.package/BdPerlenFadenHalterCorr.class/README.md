10 timesRepeat: [Smalltalk garbageCollect].
BdPerlenFadenHalter allInstancesDo: [ :m | m abandon ].
BdPerleMorph allInstancesDo: [ :m | m abandon ].
ph:=BdPerlenFadenHalter new perlenFadenModelLaenge: 2000.  
ph openInWorld.
ph perlenFadenAnzeigen.
ph perlenNumerieren.
ph optimalExtentBreite: 50.
ph extent.
ph perlenSize: 7.
pc perlenSize2: 13.

ph optimalExtent.

ph openInWindow.
Morph.
t2:=BdPerlenFadenHalterSimul new perlenFadenAnzeigen: 12 perlenFadenModel: pc perlenFadenModel.
t2 nachVorn.
t2 openInWindow.
sc:=ScrollPane new.
sc scroller addMorph: pc.
sc openInWorld.
sc layoutPolicy: nil.
sc layoutPolicy.
sc scroller color: Color paleGreen.
sc scroller extent: 200@800.
sc extent: 236@900.
pc extent

pc extent.
 "(230.0@3115.0)"
sc openInWorld.
sc scrollTarget: pc.
pc openInWorld.
pc position: (0@0).
pc:=BdPerlenFadenHalterCorr new.
pc perlenFadenModel: ph perlenFadenModel.
pc perlenFadenModel addDependent: pc.
pc openInWorld.
i:=-1.
pc perlenFadenAnzeigen: 15 offset:(i:=i+1).
pc perlenFadenAnzeigen: 15 offset:(i:=i-1).
i.

pc rotierenbreite: 15 offset: (i:=i+1).
pc perlenSize: 14.
pc rotierenbreite: 15 offset: (i:=i-1).
pc comeToFront.
pc borderWidth: 0.
pc perlenSize: 20.
pc submorphs.


pc perlenNumerieren.
pc borderWidth: 3.
pc borderWidth.
t:=BdPerlenFadenHalterSimul new coverBauen.
t cover addMorph: pc.
t cover borderWidth: 3.
i:=0.

t cover extent: pc extent.
pc position: t cover position.
pc openInWorld.

BdPerlenFadenHalterSimul new.

t nachVorn.
32/4.



pc breite: 25.



BdPerlenFadenHalter new openInWorld.

ph cloneMyself.
ph comeToFront.
ph optimalExtent.
ph submorphs bounds.
ph bounds.
 "(18.0@84.0) corner: (420.0@524.0)"
ph layoutBounds.
'abc' asString.
ph cloneMyself.
BdAp currentPaintColor.
BdAp currentPaintColor: Color red.
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