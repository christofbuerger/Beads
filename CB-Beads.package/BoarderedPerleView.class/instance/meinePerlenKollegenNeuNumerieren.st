as yet unclassified
meinePerlenKollegenNeuNumerieren
|i gr|
i:=0.
gr:=self groesse.
self owner submorphs do: [ :perle | i:=i+1. perle label: perle perleModel nummer asString.  perle groesse: gr]