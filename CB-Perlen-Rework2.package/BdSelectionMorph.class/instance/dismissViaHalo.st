as yet unclassified
dismissViaHalo
|pfm|
  pfm:=selectedItems first owner perlenFadenModel.
  selectedItems do: [:m | m dismissViaHalo].
  
  pfm myDependents do: [ :d | d refreshBdPerlenFadenHalter ]
	"super dismissViaHalo."
	"self halt."
	