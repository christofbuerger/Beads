accessing
farbListeErzeugenNeu21

|myGenerator start|
myGenerator := Random new.

start:=myGenerator next.
FarbenArrayNeu := NDArray dimensions: #(20).


1 to: 20 do: [ :i | FarbenArrayNeu atIndices: {i} put: (Color r: (0.06) g: (0.3*i/8) b: (0.1)) ].

"FarbenArrayNeu atIndices:  #(1) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices:  #(2) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices:  #(3) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices:  #(4) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices:  #(5) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices:  #(6) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices:  #(7) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices:  #(8) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices:  #(9) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(10) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(11) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(12) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(13) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(14) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(15) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(16) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(17) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(18) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(19) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next)).
FarbenArrayNeu atIndices: #(20) put: (Color r: (myGenerator next) g: (myGenerator next) b: (myGenerator next))."
