pfh:=BdPerlenFadenHalter  new perlenFadenModelLaenge: 200.
pfh perlenFadenAnzeigen.
pfhc:=BdPerlenFadenHalterCorr  new perlenFadenModel: (pfh perlenFadenModel).
pfhs:=BdPerlenFadenHalterSimul new perlenFadenAnzeigen:  15 perlenFadenModel: (pfh perlenFadenModel).
pfhs fadenhaltercorr perlenSize:24.
pfhs fadenhaltercorr perlenFadenAnzeigen: 15 offset: (i:=i+1).
ww2:=(BdWindowAlign newWithPerlenFadenHalter: pfh) openInWorld.
ww:=(BdWindowAlign newCorrWithPerlenFadenHalter: pfh) openInWorld.
ww3:=(BdWindowAlign newSimWithPerlenFadenHalter: pfh) openInWorld.


ww myPerlenhalterCorr perlenFadenAnzeigen: 15.
ww2 myPerlenhalter perlenFadenAnzeigen: 5 offset:0.
ww fensterBreiteInPerlen.
ww beadWidth.
ww2 morph myPerlenhalter class.
ww2 morph myPerlenhalter extent: 100@200.
ww2 morph myPerlenhalter breite.


pfh:=BdPerlenFadenHalter  new perlenFadenModelLaenge: 100.
xy:=(pfh) anzeigenScrollable openInWindow.
pfh perlenFadenAnzeigen.
pa:=PerlenApp new.
(((BdPerlenFadenHalterCorr new perlenFadenModel: (pfh perlenFadenModel))perlenFadenAnzeigen: 12) correctedViewbreite: 12) anzeigenScrollable openInWindow.
(BdWindowAlign newWithPerlenFadenHalter:pfh) openInWorld.

pfh:=BdPerlenFadenHalter  new perlenFadenModelLaenge: 200.
pfhc:=BdPerlenFadenHalterCorr  new perlenFadenModel: (pfh perlenFadenModel).
pfhs:=BdPerlenFadenHalterSimul new perlenFadenAnzeigen:  15 perlenFadenModel: (pfh perlenFadenModel).
pfhs fadenhaltercorr perlenSize:24.
pfhs fadenhaltercorr perlenFadenAnzeigen: 15 offset: 15.
 
xz:=pfhc anzeigenScrollable openInWindow.
xy:=pfh anzeigenScrollable openInWindow.
pfhc perlenSize: 24.
BdPerleMorph currentPerleSize.
((BdPerleMorph new label:'2')) defaultExtent.
pfhc perlenSize.
pfhc correctedViewbreite: 15.
pfhc perlenFadenAnzeigen. 
pfh perlenFadenAnzeigen.
pa:=PerlenApp new.
(((BdPerlenFadenHalterCorr new perlenFadenModel: (pfh perlenFadenModel))perlenFadenAnzeigen: 12) correctedViewbreite: 12) anzeigenScrollable openInWindow.
w2:=(BdWindowAlign newWithPerlenFadenHalter:pfhc) openInWorld.
w2.
w morph anzeigenScrollable.
w morph: pfh.
w addMorph: w morph fullFrame: ((0@0 corner: 1@1) asLayoutFrame topOffset: w dock minExtent y+3).




pa windowAufmachen: 15.
pa windowAufmachenCorrected: 15.
pa windowAufmachen: 24.
bw:=pa windowAufmachenSimulated: 24.
i:=0.
bw simulatedViewRotate: 6 offset:(i:=i+1).

(pa perlenFadenModel at: 188 ) farbe: 'red'.
(pa perlenFadenModel at: 1 ) farbe: 'green'.
(pa perlenFadenModel at: 8 ) farbe: 'orange'.
(pa perlenFadenModel at: 169 ) farbe: 'pink'.
9 to: 300 by: 7 do: [:i| (pa perlenFadenModel at: i ) farbe: 'orange']. 


________________________________________________________________________________________

experiments.

ps:= OrderedCollection new.

pv1OrdColl:=OrderedCollection new.
bwA1:=BeadsWindowAlign new openInWorld.
bwA1 extent: (100@150).
bwA1 title: 'Erstes Fenster'.
bwA1 morph color: Color black.
pv2OrdColl:=OrderedCollection new.
bwA2:=BeadsWindowAlign new openInWorld.
bwA2 extent: (100@150).
bwA2 title: 'Zweites Fenster'.
bwA2 morph color: Color black.
pv3OrdColl:=OrderedCollection new.
bwA3:=BeadsWindowAlign new openInWorld.
bwA3 extent: (100@150).
bwA3 morph color: Color black.
bwA3 title: 'Corrected'.

1 to: 200 do: [ :i | ps add: (PerleModel new farbe: 'white') ].


1 to: 200 do: [ :i | pv1OrdColl add: (BoarderedPerleView new perleModel: (ps at: i))].
1 to: 200 do: [ :i | pv2OrdColl add: (BoarderedPerleView new perleModel: (ps at: i))].
1 to: 200 do: [ :i | pv3OrdColl add: (BoarderedPerleView new perleModel: (ps at: i))].

(bwA1 morph) addAllMorphs: pv1OrdColl.
(bwA2 morph) addAllMorphs: pv2OrdColl.

1 to: 200 do: [ :i| (ps at: i) farbe: (Color registeredNameOf: ((Color classPool at: #ColorRegistry) atRandom)) asString. ].

(bwA3 morph) addAllMorphs: (pv3OrdColl copyFrom: 1 to: 20).

1 to: 200 do: [:i| (bwA3 morph) addMorph: (pv3OrdColl at: i)].
(bwA3 morph) submorphsDo: [:aMorph| aMorph delete].

(bwA3 morph) listDirection: #rightToLeft.
(bwA3 morph) wrapDirection: #rightToLeft.

|i|
i:=0.
pv3OrdColl do: [ :x| i:=i+1. x label: (i asString).].

1 to:200 by: 1 do: [ :i| (ps at: i) farbe: 'white' ].
3 to:200 by: 6 do: [ :i| (ps at: i) farbe: 'blue' ].
1 to:200 by: 4 do: [ :i| (ps at: i) farbe: 'blue' ].
1 to:200 by: 6 do: [ :i| (ps at: i) farbe: 'yellow' ].

pv1OrdColl do: [ :i| i extent: (30@30) ].
pv2OrdColl do: [ :i| i extent: (30@30) ].
