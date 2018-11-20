as yet unclassified
update: anAspect with: anObject

anAspect == #farbe ifTrue:
[ self farbeUpdate: (anObject farbe) ].
anAspect == #nummer ifTrue:
[ self labelUpdate: (anObject nummer asString)].