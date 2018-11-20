farben
farbArrayAundBNeuInitialize
|myGenerator wert|

myGenerator := Random new.

 fArrayA:= NDArray dimensions: (Array with: simGroesse with: simGroesse).
 fArrayB:= NDArray dimensions: (Array with: simGroesse with: simGroesse).

 1 to: simGroesse  do: [:j| 
 1 to: simGroesse  do: [:i| 
	                          wert:=(myGenerator nextInt: (zustaende) )-1.
	                          fArrayA atIndices: (Array with:i with:j) put: (wert).
	                          fArrayB atIndices: (Array with:i with:j) put: (wert).
 ]].


      
