accessing
initializeDroplist
	calculationDroplist := self newDropList.
	calculationDroplist
		addItemLabeled: '4 neighbours'
			do: [ self setCalculation4 ]
			icon: Smalltalk ui icons smallOkIcon;
		addItemLabeled: '8 neighbours'
			do: [ self setCalculation8 ]
			icon: Smalltalk ui icons testRedIcon;
		addItemLabeled: '4 shuf'
			do: [ self setCalculation4shuf ]
			icon: Smalltalk ui icons testRedIcon;	
		addItemLabeled: '4 shufN'
			do: [ self setCalculation4shufN ]
			icon: Smalltalk ui icons testRedIcon		