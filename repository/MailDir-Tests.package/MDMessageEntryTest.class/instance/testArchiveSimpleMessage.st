tests
testArchiveSimpleMessage

	messageEntry moveToArchive.
	
	self assert: 1 equals: archiveBox mails size.
	self assert: 1 equals: archiveBox currentMessagesDirectory entries size.