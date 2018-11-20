as yet unclassified
subscribeAnnouncements
	self perleModel announcer when: BdFarbeAendernModel send: #farbeAn:  to: self.
	self perleModel announcer when: BdNummerAendernModel send: #labelAn: to: self.
	self perleModel announcer when: BdPerleEntfernt send: #removePerle to: self.
	
subscribed:=subscribed+1.
	
	