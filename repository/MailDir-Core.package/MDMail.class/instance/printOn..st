printing
printOn: aStream
	
	self printSenderOn: aStream.
	aStream tab.
	self printSubjectOn: aStream.
