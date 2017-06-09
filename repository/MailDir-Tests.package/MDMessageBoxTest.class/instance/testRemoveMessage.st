tests
testRemoveMessage

	box removeMail: messageEntry.
	
	self assert: 2 equals: box mails size.