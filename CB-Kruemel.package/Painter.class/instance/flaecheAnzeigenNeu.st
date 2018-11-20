farben
flaecheAnzeigenNeu
   0 to: (simGroesse-1) do: 
       [:j| 0 to: (simGroesse-1) do: 
	        [:i| 
		        self christofsPunktFarbig: i*punktGroesse 
		                              oben: j*punktGroesse 
		                             gross: punktGroesse 
		                             farbe: (FarbenArrayNeu atIndices0: (Array with: (fArrayA  atIndices0: (Array with:i with:j))))
		                             farbNr: nil "(fArrayB  atIndices0: (Array with:i with:j)) "   
		         
		       
	      ]]. 
    self drawingArea changed. 