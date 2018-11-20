as yet unclassified
insertRow
|modelFaden app pm|

modelFaden:=self perleModel meinFaden.
app:=self meineApp.

(self fensterBreiteInPerlen) timesRepeat: 
		[self owner addMorph: ((BoarderedPerleView erzeugenMitModel: (pm:=PerleModel new meinFaden: modelFaden)   groessePoint: (self groesse))  meineApp: app) inFrontOf: self.
		 self perleModel meinFaden add: pm before: self perleModel.
		].
	
self meinFadenModelNeuNumerieren.
self meinePerlenKollegenNeuNumerieren.




