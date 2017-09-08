printing
printSenderNameOn: aStream

	| max |
	max := 45.
	aStream nextPutAll:  
		(self senderName size > max
			ifFalse: [self senderName]
			ifTrue: [(String streamContents: [:s | s nextPutAll: self senderName] limitedTo: max-2),'..'])