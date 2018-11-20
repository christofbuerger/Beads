as yet unclassified
perlenNumerieren
	| i perlen |
	i := 0.
	perlen := self submorphs select: [ :e | e class == BdPerleMorph ].
	perlen do:  [ :m | 
			i := i + 1.
			m labelUpdate: i asString.
			m label: i asString ]
	


"[ :m | m labelUpdate: m perleModel nummer asString ]
	


self
		submorphsDo: [ :m | 
			i := i + 1.
			m labelUpdate: i asString.
			m label: i asString ]"