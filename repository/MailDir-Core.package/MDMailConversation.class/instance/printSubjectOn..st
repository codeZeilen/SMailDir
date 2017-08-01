printing
printSubjectOn: aStream

	| max |
	max := 72.
	aStream nextPutAll:  
		(self startMail subject size > max
			ifFalse: [self startMail subject]
			ifTrue: [(String streamContents: [:s | s nextPutAll: self startMail subject] limitedTo: max-2),'..'])