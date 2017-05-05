printing
printOn: aStream

	aStream nextPutAll: (self hasBeenRead ifTrue: ['(read) '] ifFalse: ['(unread) ']) , self subject