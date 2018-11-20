as yet unclassified
initWithModel: aPerleModel

self perleModel: aPerleModel.
aPerleModel addDependent: self.
self label: aPerleModel nummer asString.
self color: aPerleModel farbe.
