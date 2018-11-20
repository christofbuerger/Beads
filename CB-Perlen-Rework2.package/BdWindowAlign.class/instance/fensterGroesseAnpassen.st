as yet unclassified
fensterGroesseAnpassen
|fadenlaenge fensterbreite beadwidth|

fadenlaenge:=self morph submorphs size.
fensterbreite:=self fensterBreiteInPerlen.
beadwidth:=(((self morph) submorphs) at:2) extent x. 
	
(fadenlaenge/fensterbreite) fractionPart = 0
	 ifFalse: [		Transcript show: 'fenstergeometrie ermittelt: '; show: fadenlaenge; tab;show:fensterbreite;cr.           [
					((fadenlaenge/(fensterbreite:=fensterbreite-1)) fractionPart) = 0.
					
			] whileFalse.
		
							
						].

self extent: ( ((fensterbreite*beadwidth)@((fadenlaenge/fensterbreite)*beadwidth)))+         (10@38)+(0@(self dock minExtent y+3)).
self announcer announce:WindowResizing.
"self error."
"(Delay forSeconds: 1) wait."
"meinFenster fensterInfoMorphRefresh."
