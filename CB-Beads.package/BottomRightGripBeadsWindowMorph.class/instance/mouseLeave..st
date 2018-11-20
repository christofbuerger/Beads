as yet unclassified
mouseLeave: anEvent

self meinFenster announcer announce:WindowResizing.
super mouseLeave: anEvent.
"self fensterGroesseAnpassen."

 
self meinFenster fensterInfoMorphRefresh.