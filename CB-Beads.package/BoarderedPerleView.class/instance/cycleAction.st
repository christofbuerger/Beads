accessing
cycleAction
Transcript show: 'cycleAction fired';cr.
 "self clicks: (self clicks + 1).
 (self clicks) \\ 3 = 0
    ifTrue: [self farbeDirekt: 'yellow'].
 (self clicks) \\ 3 = 1
    ifTrue: [self farbeDirekt: 'blue'].
(self clicks) \\ 3 = 2
    ifTrue: [self farbeDirekt: 'red']."