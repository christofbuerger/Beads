pfh:=BdPerlenFadenHalter  new perlenFadenModelLaenge: 200.
pfh anzeigenScrollable openInWindow.
pfh perlenFadenAnzeigen.

ww:=(BdWindowAlign newWithPerlenFadenHalter: pfh) openInWorld.
ww2:=(BdWindowAlign newCorrWithPerlenFadenHalter: pfh) openInWorld.
ww3:=(BdWindowAlign newSimWithPerlenFadenHalter: pfh) openInWorld.

j:=0.
ww3 morph myPerlenhalter perlenFadenAnzeigen: 12 offset:( j:=j+1). 