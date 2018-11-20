as yet unclassified
hasPattern: anOrderedCollection
|matchList ausgabe|
matchList:= OrderedCollection new.
1 to: anOrderedCollection size do: [ :i | 
	matchList :=(anOrderedCollection first: i).
	Transcript show: 'pattern gesucht: '. Transcript show: matchList;cr.
	(self matchPattern: anOrderedCollection matchList: matchList) 
	ifTrue: [ausgabe:=true. ^ i] 
	ifFalse: [ausgabe:=false].
	Transcript show: 'Ergebnis: '. Transcript show: ausgabe; show: '  anzahl: '; show: i;cr.
].
^ ausgabe.

"boolean hasPattern(int[] data) {
    ArrayList<Integer> matchList = new ArrayList<Integer>();

    for (int i = 0; i < data.length; i++) {
        matchList.add(i);

        if (matchPattern(data, matchList))
            return true;
    }

    return false;
}

"