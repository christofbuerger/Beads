initialization
initPerlenFaden
|perlenFaden|
perlenFaden:= OrderedCollection new.
	1 to: self defaultLaenge do: [ :i | perlenFaden add: (BoarderedPerleView erzeugenMitModel: 	(perlenFadenModel at: i) groesse: self defaultPerlenGroesse) ].
	perlenFadenViewsOC add: perlenFaden