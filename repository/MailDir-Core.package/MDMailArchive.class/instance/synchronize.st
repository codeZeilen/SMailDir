synchronization
synchronize

	self
		synchronizeBoxes;
		synchronizeMessageEntries.
		
	self conversationIndex ifEmpty: [self indexConversations].