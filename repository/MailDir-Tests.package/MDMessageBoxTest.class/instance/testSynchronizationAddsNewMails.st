tests
testSynchronizationAddsNewMails

	self addNewMail.
	archive synchronizeMessageEntries.
	addedMessageEntry := archive allMails detect: [:m | m messageId = self addedMailMessageId].
	self assert: addedMessageEntry isImportant.
	
	self changeFlagsOfNewMail.
	archive synchronizeMessageEntries.
	self assert: addedMessageEntry isImportant not.