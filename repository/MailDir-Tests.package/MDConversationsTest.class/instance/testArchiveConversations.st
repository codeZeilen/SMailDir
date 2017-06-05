as yet unclassified
testArchiveConversations

	| conversations |
	conversations := MDMailConversation conversationsIn: box mails.
	
	conversations do: [:c | c moveToArchive].
	
	self assert: 3 equals: archiveBox mails size.
	self assert: 3 equals: (archiveBox currentMessagesDirectory entries , archiveBox newMessagesDirectory entries) size.
	self assert: 1 equals: doubleMessageEntry files size
		