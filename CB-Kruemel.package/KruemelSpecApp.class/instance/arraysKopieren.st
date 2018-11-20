accessing
arraysKopieren

"t:=[1 to: simGroesse  do: [:j| 
 1 to: simGroesse  do: [:i| 
	                          
	                          fArrayA atIndices: (Array with:i with:j) put: (fArrayB atIndices: (Array with:i with:j)) .
 ]]] timeToRun.

Transcript show:'copy array zwei schleifen';show: t asString;cr."


fArrayA:=fArrayB veryDeepCopy.
"Transcript show:'copy array veryDeepCopy:';show: t asString;cr."