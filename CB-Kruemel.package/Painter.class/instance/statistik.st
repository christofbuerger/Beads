calculate
statistik


|AnzZustaende Haeufigkeit|
   0 to: (zustaende-1) do: [:z|
	    AnzZustaende := 0.
	     
	
   1 to: simGroesse do: [:j|
   1 to: simGroesse do: [:i|
	        		
          	z = (fArrayB atIndices: (Array with: i with: j)) ifTrue: [(AnzZustaende := AnzZustaende + 1)] 		
			
			]].
	  Transcript show: z; show: ' taucht '; show: AnzZustaende; show: ' mal auf. Die relative Haeufigkeit ist: '; show: (AnzZustaende/(simGroesse*simGroesse) asFloat); cr.          
	].