as yet unclassified
beadsRepeatCalc: data
	| ok |
	ok := true.
	1 to: data size do: [ :i | Transcript show: i;tab ].
	Transcript cr.
	data do: [ :i| Transcript show: i;tab ].Transcript show: '  size:  '; 	show: data size; cr.
	1 to: data size - 1 do: [ :i | 
		Transcript show: 'i+1:';tab; show: i + 1;tab; show: (data at: i + 1);tab; show: 'data at: 1:';tab; show: (data at: 1);cr.
		(data at: i + 1) = (data at: 1)
			ifTrue: [ 
				Transcript show: 'hallo übereinstimmung gefunden, deshalb rein in die innere schleife';cr.
				ok := true.
				i + 1 to: data size - 1 do: [ :k | 
					Transcript
						show: 'k: '; tab; show: k; tab;
						show: '(data at:(1+((k-i)\\(i)))): ';
						show: 1 + ((k - i) \\ i); tab;
						show: (data at: 1 + ((k - i) \\ i)); tab;
						show: '(data at: (k+1)): '; tab;
						show: k + 1; tab;
						show: (data at: k + 1); cr.
					((data at: (1 + ((k - i) \\ i))) ~= (data at: (k + 1)))
						ifTrue: [ 
							self
								escaper: [ :break | Transcript show: 'breaker schleife betreten'.
									ok := false.
									ok ifFalse: [ Transcript show: 'abbrechen!';cr. break value ] ] ] ].
				ok ifTrue: [ 
				 Transcript show: ' patternlaenge: '; show: i;tab; show: 'ermitteltes pattern: ';
									show: (data first: i); 
									cr.
						^ i ] ] ] .
	        Transcript show: ' patternlaenge nix gefunden - also komplett: '; 
									show: data size;cr.
									
	^ data size