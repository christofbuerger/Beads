accessing
start2
	simGroesse := 50.
	zustaende := 4.
	punktGroesse := 10.
	rechenZyklen := 50.
	rechenZyklen2 := 80.
	"self window  extent:  ((simGroesse*punktGroesse)+10)@((simGroesse*punktGroesse)+89)."	"breite@hoehe"
	self farbArrayAundBNeuInitialize.
	self farbListeErzeugenNeu2: zustaende.
	self setCalculation4