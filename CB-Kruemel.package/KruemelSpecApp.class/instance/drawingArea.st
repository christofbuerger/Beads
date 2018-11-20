accessing
drawingArea
	^ drawingArea
		ifNil: [ drawingArea := Form
				extent: 500 @ 500
				depth: 32 ]


	"(ImageModel new image: f) openWithSpec."