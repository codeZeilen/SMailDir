printing
printOn: aStream
	
	self printSenderNamesOn: aStream.
	aStream tab.
	self printSubjectOn: aStream.
