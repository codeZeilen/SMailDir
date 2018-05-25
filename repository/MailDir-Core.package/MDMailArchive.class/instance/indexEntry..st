indexing
indexEntry: anEntry

	self protectIndexAccessDuring: [
		self indexIntoMessageIdIndex: anEntry.
		self indexIntoConversationIndex: anEntry]