accessing
einPaarZyklen
	| tmp1 |
	zyklenZaehler := 0.
	[ rechenZyklen
		timesRepeat: [ | tmp2 |
			zyklenZaehler := zyklenZaehler + 1.
			tmp2 := Transcript.
			tmp2
				show: 'Zaehler aus dem Krümelmonster: ';
				show: zyklenZaehler;
				cr.
			self komplettZyklusSingle ] ] fork