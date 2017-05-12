printing
printSubjectOn: aStream

	| max |
	max := 72.
	aStream nextPutAll:  
		(self subject size > max
			ifFalse: [self subject]
			ifTrue: [(String streamContents: [:s | s nextPutAll: self subject] limitedTo: max-2),'..'])