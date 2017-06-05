as yet unclassified
testAddAnExistingMessage

	| previousSize |
	previousSize := box2 mails size.

	box removeMail: messageEntry.
	box2 addMail: messageEntry.
	
	self assert: previousSize + 1 equals: box2 mails size.
	