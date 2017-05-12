printing
printSenderOn: aStream

	| max |
	max := 30.
	aStream nextPutAll:  
		(self sender size > max
			ifFalse: [self sender]
			ifTrue: [(String streamContents: [:s | s nextPutAll: self sender] limitedTo: max-2),'..'])