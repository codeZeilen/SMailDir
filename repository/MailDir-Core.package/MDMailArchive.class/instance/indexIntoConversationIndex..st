indexing
indexIntoConversationIndex: anEntry

	self conversationIndex at: anEntry messageId put: (self determineConversationFor: anEntry)