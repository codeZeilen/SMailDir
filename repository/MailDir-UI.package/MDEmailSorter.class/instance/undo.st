as yet unclassified
undo

	| messageEntry |
	messageEntry := self mailArchive 
		messageEntryForId: self previousMail messageId
		ifAbsent: [self error: 'Index is broken'].
		
	messageEntry moveTo: self inbox.
		
	self setCurrentMailTo: messageEntry message