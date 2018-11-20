as yet unclassified
findPattern: t

1 to: t size do: [ :i | |x|
	
	x:=(t indexOfSubCollection: (t first: i) startingAt: 2).
	Transcript 	show: 'i: ';
						show: i;
						show: '  ';
						show: (t first: i); 
						show: ' ';
						show: (t indexOfSubCollection: (t first: i) startingAt: 2)-1;
						show: 'muster: ';
						show: 
									((((t indexOfSubCollection: (t first: i) startingAt: 2)-1) > 0) ifTrue: [ (t first: (t indexOfSubCollection: (t first: i) startingAt: 2)-1 ) ] ifFalse: [' weiter oben nix mehr']) 
									; 
						cr.
						x=0 ifTrue: [ ^
							t first: (t indexOfSubCollection: (t first: (i-1)) startingAt: 2)-1 
							 ]].