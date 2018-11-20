as yet unclassified
addPerlenInitial: anInteger
1 to: anInteger do: [ :i | self perlenFadenModel add: (BdModel new nummerInitial: i). ]