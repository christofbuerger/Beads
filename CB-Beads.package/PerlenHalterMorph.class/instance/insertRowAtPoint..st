as yet unclassified
insertRowAtPoint: aPoint
|modelFaden app pm perle|

Transcript show: 'das kommt ausm insertRowAtPoint: ';show: aPoint.

perle:=self findPerleAt: aPoint.

modelFaden:=perle perleModel meinFaden.
app:=perle meineApp.

(perle fensterBreiteInPerlen) timesRepeat: 
		[perle owner addMorph: ((BoarderedPerleView erzeugenMitModel: (pm:=PerleModel new meinFaden: modelFaden)   groessePoint: (perle groesse))  meineApp: app) inFrontOf: perle.
		 perle perleModel meinFaden add: pm before: perle perleModel.
		].
	
perle meinFadenModelNeuNumerieren.
perle meinePerlenKollegenNeuNumerieren.