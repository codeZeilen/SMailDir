tests
testSynchronizationAddsNewMails

	self addNewMail.
	archive synchronizeMessageEntries.
	addedMessageEntry := archive allMails detect: [:m | m messageId = self addedMailMessageId].
	
	self assert: 4 equals: box mails size.
	self assert: (box mails includes: addedMessageEntry).
	self assert: (addedMessageEntry boxes includes: box).