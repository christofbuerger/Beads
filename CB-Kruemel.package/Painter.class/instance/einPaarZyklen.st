as yet unclassified
einPaarZyklen
|zaehler|
zyklenZaehler:=0.

[rechenZyklen timesRepeat: [ 
zyklenZaehler:=zyklenZaehler+1.
Transcript show: 'Zaehler aus dem Krümelmonster: ';show: zyklenZaehler;cr.
self komplettZyklusSingle.
World doOneCycle.
 ]] fork. 
