as yet unclassified
perlenSize: anInteger
|perlen platzhalter|
perlenSize:=anInteger.

perlen:=self submorphs select: [ :e | e class==BdPerleMorph ].
platzhalter:=self submorphs select: [ :e | e class==BorderedMorph ].

perlen do: [ :m | |lb| lb:=m label. m extent: anInteger@anInteger. m label: lb].
perlen do: [ :m | |lb| lb:=m label. m extent: anInteger@anInteger. m labelUpdate: lb].

platzhalter do: [ :m | m extent: (anInteger//2)@anInteger ]