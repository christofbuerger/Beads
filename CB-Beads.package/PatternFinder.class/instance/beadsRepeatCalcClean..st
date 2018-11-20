as yet unclassified
beadsRepeatCalcClean: data
	| ok |
	ok := true.
	1 to: data size - 1 do: [ :i | 
		(data at: i + 1) = (data at: 1)
			ifTrue: [ 
				ok := true.
				i + 1 to: data size - 1 do: [ :k | 
					(data at: 1 + ((k - i) \\ i)) ~= (data at: k + 1)
						ifTrue: [ 
							self
								escaper: [ :break | 
									ok := false.
									ok
										ifFalse: [ break value ] ] ] ].
				ok
					ifTrue: [ 
						Transcript
							show: ' patternlaenge: ';
							show: i; tab;
							show: 'ermitteltes pattern: ';
							show: (data first: i); cr.
						^ data first: i ] ] ].
	Transcript
		show: ' patternlaenge: ';
		show: data size;
		cr.
	^ data size