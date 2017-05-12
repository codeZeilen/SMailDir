indexing
indexMails

	self mailIdIndex: Dictionary new.
	self conversationIndex: Dictionary new.
	self allMails do: [:m | self indexIntoMessageIdIndex: m].
	self allMails do: [:m | self indexIntoConversationIndex: m].
	