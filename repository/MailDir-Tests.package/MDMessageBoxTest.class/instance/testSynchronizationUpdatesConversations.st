tests
testSynchronizationUpdatesConversations

	| tmpConversation |
	self assert: 1 equals: (MDMailConversation conversationsIn: {messageEntry}) size.
	tmpConversation := (MDMailConversation conversationsIn: {messageEntry}) asArray first.

	self addNewMail.
	archive synchronizeMessageEntries.
	addedMessageEntry := archive allMails detect: [:m | m messageId = self addedMailMessageId].
	
	self assert: (tmpConversation mails includes: addedMessageEntry).