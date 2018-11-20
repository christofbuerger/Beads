as yet unclassified
perlenNumerieren
|i semaphore|
semaphore:=Semaphore new.
i:=0.
[Transcript show: 'Perlen Numerieren aufgerufen';cr. semaphore signal.] fork.
semaphore wait.

	self submorphsDo: [ :m | i:=i+1. m labelUpdate: i asString. m label: i asString.] 
		