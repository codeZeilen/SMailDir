printing
printSenderOn: aStream

	| max |
	max := 30.
	aStream nextPutAll:  
		(self startMail sender size > max
			ifFalse: [self startMail sender]
			ifTrue: [(String streamContents: [:s | s nextPutAll: self startMail sender] limitedTo: max-2),'..'])