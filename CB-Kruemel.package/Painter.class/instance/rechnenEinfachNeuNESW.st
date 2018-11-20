calculate
rechnenEinfachNeuNESW
"jeder nachbar von i und j das ist
                    [i,j-1] 
                       ∆ 
                       |  
        [i-1,j] <- [i,j] -> [i+1,j]
                      |   
                      √
                    [i,j+1]"
|testZelle Nord Sued West Ost nachbarNord nachbarOst nachbarSued nachbarWest |
    
   0 to: simGroesse -1  do: [:j| 
   0 to: simGroesse -1  do: [:i|
		
		West:= ((i-1)\\simGroesse ).  
		 Ost:= ((i+1)\\simGroesse ).
		Nord:= ((j-1)\\simGroesse ).
		Sued:= ((j+1)\\simGroesse ).
		 
	  testZelle  := fArrayA atIndices0:(Array with:i with:j).
	  nachbarNord:= fArrayA atIndices0:(Array with:i with:Nord ).
	  nachbarOst := fArrayA atIndices0:(Array with:Ost  with:j ).
	  nachbarSued:= fArrayA atIndices0:(Array with:i with:Sued ).
	  nachbarWest:= fArrayA atIndices0:(Array with:West with:j ).
	  			
       nachbarNord  = ((testZelle+1)\\zustaende) ifTrue: [fArrayB atIndices0: (Array with: i with: j) put: nachbarNord ].
       nachbarOst   = ((testZelle+1)\\zustaende) ifTrue: [fArrayB atIndices0: (Array with: i with: j) put: nachbarOst  ].
       nachbarSued  = ((testZelle+1)\\zustaende) ifTrue: [fArrayB atIndices0: (Array with: i with: j) put: nachbarSued ].
       nachbarWest  = ((testZelle+1)\\zustaende) ifTrue: [fArrayB atIndices0: (Array with: i with: j) put: nachbarWest ].			
		]].

    