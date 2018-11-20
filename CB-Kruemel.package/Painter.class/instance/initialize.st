farben
initialize
	super initialize.
	simGroesse := 600.
	zustaende := 16.
	punktGroesse :=1.
	rechenZyklen := 50.
	rechenZyklen2 := 80.
	self installMenubar.
	self installToolbar.
	self installDrawingArea.
	self window openInWorld.
	self window  extent:  ((simGroesse*punktGroesse)+10)@((simGroesse*punktGroesse)+89). "breite@hoehe"

	self farbArrayAundBNeuInitialize.
	self farbListeErzeugenNeu.   
	
	
