tests
testSynchronizationRemovesEntryFromConversations

	| tmpConversation |
	self assert: 1 equals: (MDMailConversation conversationsIn: {messageEntry}) size.
	tmpConversation := (MDMailConversation conversationsIn: {messageEntry}) asArray first.
	messageEntry file delete.
	
	archive synchronizeMessageEntries.
	
	self assert: (tmpConversation mails includes: messageEntry) not.