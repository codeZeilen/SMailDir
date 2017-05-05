as yet unclassified
printOn: aStream

	aStream nextPutAll: (self hasBeenRead ifTrue: ['(read) '] ifFalse: ['(unread) ']) , self subject