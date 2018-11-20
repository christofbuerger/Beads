as yet unclassified
fourNeighbors: anElementIndexArray
	^ Array
		with: (Array with: (self wrapIndex: anElementIndexArray first + 1 dimension: 1) with:                  anElementIndexArray second)
		with: (Array with:                  anElementIndexArray first                   with: (self wrapIndex: anElementIndexArray second + 1 dimension: 2))
		with: (Array with: (self wrapIndex: anElementIndexArray first - 1 dimension: 1) with:                  anElementIndexArray second)
		with: (Array with:                  anElementIndexArray first                   with: (self wrapIndex: anElementIndexArray second - 1 dimension: 2))