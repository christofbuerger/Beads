as yet unclassified
cloneMyself
|fh|
fh:=BdPerlenFadenHalter new.
fh openInWorld.
fh perlenFadenModel: self perlenFadenModel.
fh perlenFadenModel addDependent: fh.
fh perlenFadenAnzeigen.
fh perlenNumerieren.
fh perlenSize: 20.
fh optimalExtent.
^fh
