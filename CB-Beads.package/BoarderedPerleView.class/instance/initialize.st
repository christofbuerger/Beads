initialization
initialize
	super initialize.
	"self farbeInitial: self model farbe."
	
	self extent: self groesse.
	
	self target: self.
	self actionSelector: #cycleAction.
	self clicks: 1.
	"self on:#mouseMove send:#farbeDirektSchwarz to:self "
	
	"self perleGeaendertAnnouncer when: FarbeAendernPerleView send: #farbe  to: self"