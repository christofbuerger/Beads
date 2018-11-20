as yet unclassified
anzeigenScrollable
self fadenhaltercorr scrollpane: BdGeneralScrollPane new.
self fadenhaltercorr scrollpane myPerlenhalter: self.

self fadenhaltercorr scrollpane addDependent: self fadenhaltercorr.
self fadenhaltercorr scrollpane changeScrollerTableLayout.
self fadenhaltercorr scrollpane scrollTarget: self.
self fadenhaltercorr scrollpane hResizing: #shrinkWrap; height: 500.
self fadenhaltercorr scrollpane scroller color: Color white.
"self fadenhaltercorr scrollpane openInWindow."
^ self fadenhaltercorr  scrollpane.