I am the Application wrapping all the objects required to have the beads pattern design functionality.

first examples:

pa:=PerlenApp new.
pa windowAufmachen: 24.
pa windowAufmachenCorrected: 15.
bw:=pa windowAufmachenSimulated: 6.
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
