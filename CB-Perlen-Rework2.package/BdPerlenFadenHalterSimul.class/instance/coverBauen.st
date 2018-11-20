as yet unclassified
coverBauen
|temp m1 m2|
temp:=self.
temp layoutPolicy: ProportionalLayout new.
m1:=Morph new.
m2:=Morph new.
m1 color: ((Color veryVeryLightGray) alpha: 0.95); comeToFront.
m2 color: ((Color veryVeryLightGray) alpha: 0.95); comeToFront.

temp addMorph: m1 fullFrame: (0@0 corner: 0.25@1). "(0@0 corner: 0.2727@1)"
temp addMorph: m2 fullFrame: ((1-0.25)@0 corner: 1@1).
temp color: Color transparent.
temp borderColor: Color black.
temp borderWidth: 0.
temp openInWorld.
m1 comeToFront.
m2 comeToFront.
coverFlapLeft:=m1.
coverFlapRight:=m2.
cover:=temp.

^self