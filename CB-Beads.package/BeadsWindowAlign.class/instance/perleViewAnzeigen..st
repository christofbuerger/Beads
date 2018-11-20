view
perleViewAnzeigen: aPerleFadenModel
	1 to: self meineApp perlenFadenModel size do: [ :i | 
		self morph
			addMorphBack: (BoarderedPerleView erzeugenMitModel: (self meineApp perlenFadenModel at: i) groesse: self beadWidth) ]