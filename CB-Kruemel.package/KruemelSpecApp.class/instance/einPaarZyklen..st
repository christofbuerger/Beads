accessing
einPaarZyklen: arg1
	| tmp1 |
	zyklenZaehler := 0.
	[ arg1
		timesRepeat: [ | tmp2 |
			zyklenZaehler := zyklenZaehler + 1.
			tmp2 := Transcript.
			tmp2
				show: 'Zaehler aus dem Krümelmonster: ';
				show: zyklenZaehler;
				cr.
			self label label: zyklenZaehler asString.
			self komplettZyklusSingle ]. 
		  self flaecheAnzeigenNeu
		] fork.
	     