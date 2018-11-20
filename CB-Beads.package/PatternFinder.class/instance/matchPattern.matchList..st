as yet unclassified
matchPattern: anOrderedCollection matchList: pattern
|ausgabe|
ausgabe:=true.
1 to: anOrderedCollection size do: [ :i |
	(
	(anOrderedCollection at: i) ~= 
	(pattern at: ((i\\(pattern size)=0) 
		ifTrue: [pattern size] 
		ifFalse: [i\\pattern size]))
		)
		ifTrue: [ ausgabe:= ausgabe & false ] 
		ifFalse: [ausgabe:= ausgabe & true].
		Transcript show: 'aMatchList aus Unterprogramm: '. Transcript show: (pattern at: ((i\\(pattern size)=0) 
		ifTrue: [pattern size] 
		ifFalse: [i\\pattern size]))
				; show: 'gechecked gegen: '; show:(anOrderedCollection at: i); show: ' ausgabe: ';show: ausgabe;cr.
	
	 ].
^ ausgabe.



"boolean matchPattern(int[] data, ArrayList<Integer> pattern) {
    for (int i = 0; i < data.length; i++)
        if (data[i] != pattern.get(i % pattern.size())
            return false;

    return true;
}"