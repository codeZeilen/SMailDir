as yet unclassified
testAddAnExistingMessage

	box removeMail: messageEntry.
	box2 addMail: messageEntry.
	
	self assert: box2 mails size equals: 1.
	