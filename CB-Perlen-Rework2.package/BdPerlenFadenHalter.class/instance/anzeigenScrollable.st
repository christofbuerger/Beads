as yet unclassified
anzeigenScrollable
scrollpane := BdGeneralScrollPane new.
scrollpane myPerlenhalter: self.
scrollpane addDependent: self.
self scrollpane changeScrollerTableLayout.
self scrollpane scrollTarget: self.
self scrollpane hResizing: #shrinkWrap; height: 500.
self scrollpane scroller color: Color white.
"self scrollpane openInWindow."
^ self scrollpane.

