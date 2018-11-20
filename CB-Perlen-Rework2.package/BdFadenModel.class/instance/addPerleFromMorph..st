as yet unclassified
addPerleFromMorph: aBdPerleMorph
|pM|
pM:=BdModel new.
pM farbe: aBdPerleMorph color. 
pM meinFaden: self.
aBdPerleMorph perleModel: pM.

self perlenFadenModel add: pM.
self changed: #addPerle with: self
