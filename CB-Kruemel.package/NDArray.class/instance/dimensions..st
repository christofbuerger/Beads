as yet unclassified
dimensions: anArayOfSizes

"Initialize, including calculation of internal constants from specification." 
| temp |
dimensions := anArayOfSizes size. sizes := anArayOfSizes. 

"The total number of elements is equal to the product of all dimensions." 

elements := Array new: (anArayOfSizes inject: 1 into: [:size :el | el * size]). 

multipliers := Array new: dimensions. 

multipliers at: 1 put: (temp := 1). 
2 to: dimensions do: [:index | 
	    temp := temp * (anArayOfSizes at: index - 1). 
	    multipliers at: index put: temp.
	    ].

constant := multipliers inject: -1 into: [:sum :el | el + sum].