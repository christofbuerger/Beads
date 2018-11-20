interface building
fensterInfoMorphRefresh
"
(self fensterInfoMorph) contents:  self infoEinsammelnString."

"(self fensterInfoMorph) position: (self bounds corner x@self bounds origin y)-(self fensterInfoMorph extent x+5@(self fensterInfoMorph extent y+15) negated)."

(self fensterInfoMorph) position: (self bounds origin) + (8@62).