as yet unclassified
testRemoveMessage

	box removeMail: messageEntry.
	
	self assert: box mails size equals: 1.