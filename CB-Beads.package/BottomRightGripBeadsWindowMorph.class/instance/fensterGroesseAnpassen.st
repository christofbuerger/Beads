as yet unclassified
fensterGroesseAnpassen
|fadenlaenge fensterbreite beadwidth|

fadenlaenge:=meinFenster morph submorphs size.
fensterbreite:=meinFenster fensterBreiteInPerlen.
beadwidth:=(((meinFenster morph) submorphs) at:1) extent x. 
	
(fadenlaenge/fensterbreite) fractionPart = 0
	 ifFalse: [		Transcript show: 'fenstergeometrie ermittelt: '; show: fadenlaenge; tab;show:fensterbreite;cr.           [
					((fadenlaenge/(fensterbreite:=fensterbreite-1)) fractionPart) = 0.
					
			] whileFalse.
		
							
						].

meinFenster extent: ( ((fensterbreite*beadwidth)@((fadenlaenge/fensterbreite)*beadwidth)))+         (10@38)+(0@(meinFenster dock minExtent y+3)).
meinFenster announcer announce:WindowResizing.
"self error."
"(Delay forSeconds: 1) wait."
"meinFenster fensterInfoMorphRefresh."
