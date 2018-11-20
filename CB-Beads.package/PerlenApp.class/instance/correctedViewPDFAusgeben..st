as yet unclassified
correctedViewPDFAusgeben: breite


|  aStream pdfdoc myFont aPage myFontInMilliMeters farbliste x i gruppenzaehl text sizeF break  myTitleFont  |
   myTitleFont := (PDFTimesFont size: 24 pt) bold: true.
	
	i:=0. gruppenzaehl:=0. x := OrderedCollection new. farbliste:=OrderedCollection new.
	(self perlenFadenModel do: [ :pm | farbliste add: (pm farbe asString)] ).
	aStream:= FileStream fileNamed: '/Volumes/mac/Users/christofbuerger/Downloads/pdf/musterbild.pdf'.
	pdfdoc := PDFDocument new continuousPages.
	myFont := PDFTimesFont size: 12 pt.
	myFontInMilliMeters := PDFTimesFont size: 5 mm.
	aPage := PDFPage new.
	sizeF:=2.96 .
	break:=96.
	
	farbliste 
		do: [ :perle | 
			
			aPage add: (PDFCellElement new  
		from: 80 mm @ 60 mm;
		dimension: 50 mm @ 10 mm;
		textColor: (PDFColor r: 0 g: 0 b: 255);
		fillColor: (PDFColor r: 0 g: 255 b: 0);
		text: 'background: green';
		alignment: PDFAlignment center middle
	).
	
			
			
			
					 ].
	

	pdfdoc add: aPage.
pdfdoc exportTo: aStream.

	
	


	


	aPage add: (PDFCellElement new
		from: 10 mm @ 5 mm;
		dimension: 190 mm @ 10 mm;
		fillColor: (PDFColor new setGreyLevel: 224);
		text: 'Demonstration of PDFCellElement';
		font: myTitleFont;
		alignment: PDFAlignment center
	).
	
	"horizontal alignment"
	aPage add: (PDFCellElement new  
		from: 10 mm @ 20 mm;
		dimension: 50 mm @ 10 mm;
		text: 'alignment: left';
		alignment: PDFAlignment left
	).
	
	aPage add: (PDFCellElement new  
		from: 80 mm @ 20 mm;
		dimension: 50 mm @ 10 mm;
		text: 'alignment: center'
	 ).
	
	aPage add: (PDFCellElement new  
		from: 150 mm @ 20 mm;
		dimension: 50 mm @ 10 mm;
		text: 'alignment: right';
		alignment: PDFAlignment right
	).

	"vertical alignment"
	aPage add: (PDFCellElement new  
		from: 10 mm @ 40 mm;
		dimension: 50 mm @ 10 mm;
		text: 'vertical: top';
		alignment: PDFAlignment top left
	).
	
	aPage add: (PDFCellElement new  
		from: 80 mm @ 40 mm;
		dimension: 50 mm @ 10 mm;
		text: 'vertical: middle';
		alignment: PDFAlignment center middle
	).
	
	aPage add: (PDFCellElement new  
		from: 150 mm @ 40 mm;
		dimension: 50 mm @ 10 mm;
		text: 'vertical: bottom';
		alignment: PDFAlignment right bottom
	).

	"colors"
	aPage add: (PDFCellElement new  
		from: 10 mm @ 60 mm ;
		dimension: 50 mm @ 10 mm;
		textColor: (PDFColor r: 0 g: 0 b: 255);
		drawColor: (PDFColor r: 255 g: 0 b: 0);
		text: 'text: blue border: red';
		alignment: PDFAlignment center middle
	).
	
	
	aPage add: (PDFCellElement new  
		from: 150 mm @ 60 mm;
		dimension: 50 mm @ 10 mm;
		textColor: (PDFColor new setGreyLevel: 255);
		fillColor: (PDFColor new setGreyLevel: 128);
		dotted: (PDFDotted new length: 1 mm; space: 1 mm);
		text: 'grey level & dotted border';
		thickness: 0.2 mm;
		alignment: PDFAlignment center middle
	).
	
	aPage add: (PDFCellElement new  
		from: 10 mm @ 80 mm;
		text: 'A cell without wh'
	).
	self flag: 'TODO Implement layout'.
