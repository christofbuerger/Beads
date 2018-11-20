as yet unclassified
faedelListePDFAusgeben: breite


	|  aStream pdfdoc myFont aPage myFontInMilliMeters farbliste x i gruppenzaehl text sizeF break|

	i:=0. gruppenzaehl:=0. x := OrderedCollection new. farbliste:=OrderedCollection new.
	(self perlenFadenModel do: [ :pm | farbliste add: (pm farbe asString)] ).
	aStream:= FileStream fileNamed: '/Volumes/mac/Users/christofbuerger/Downloads/pdf/faedelliste.pdf'.
	pdfdoc := PDFDocument new continuousPages.
	myFont := PDFTimesFont size: 12 pt.
	myFontInMilliMeters := PDFTimesFont size: 5 mm.
	aPage := PDFPage new.
	sizeF:=2.96 .
	break:=96.
	
	farbliste 
		do: [ :perle | 
			i:=i+1.
			text:='Perle Nr.:   ', i asString,'    ', perle.
			aPage add: (PDFTextElement from: 10 mm @ (sizeF*(((i-1)\\break)+2)) mm text: text).
					i\\3=0 ifTrue: [ aPage add:
				(PDFLineElement 	from: 10 mm @ ((sizeF*(((i-1)\\break)+2))+3) mm to: 80 mm @ ((sizeF*(((i-1)\\break)+2))+3) mm). ].
					i\\breite=0 ifTrue: [aPage add:
				(PDFLineElement 	from: 10 mm @ ((sizeF*(((i-1)\\break)+2))+3) mm to: 160 mm @ ((sizeF*(((i-1)\\break)+2))+3) mm). ].
				  i\\break =0 ifTrue: [ pdfdoc add: aPage. aPage := PDFPage new. ]
					 ].
	

	pdfdoc add: aPage.
pdfdoc exportTo: aStream.



	
	
	


	
	
	
	