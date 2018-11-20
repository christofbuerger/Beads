initialization
initPerlenFadenModel

self perlenFadenModel: OrderedCollection new.
	1 to: self defaultLaenge do: [ :i | 
		perlenFadenModel
			add:
				(PerleModel new
					farbe: 'white';
					nummer: i asString;
					meinFaden: perlenFadenModel) ].