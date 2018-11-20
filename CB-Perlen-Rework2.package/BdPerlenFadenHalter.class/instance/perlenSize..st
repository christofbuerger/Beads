as yet unclassified
perlenSize: anInteger


self submorphsDo: [ :m | |lb| lb:=m label. m extent: anInteger@anInteger. m label: lb].
self submorphsDo: [ :m | |lb| lb:=m label. m extent: anInteger@anInteger. m labelUpdate: lb]..
perlenSize:=anInteger.
self scrollpane extent: self extent x@self scrollpane extent y