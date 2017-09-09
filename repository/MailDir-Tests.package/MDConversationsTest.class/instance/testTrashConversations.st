tests
testTrashConversations

	| conversations |
	conversations := MDMailConversation conversationsIn: box mails.
	
	conversations do: [:c | c moveToTrash].
	
	self assert: 3 equals: trashBox mails size.
	self assert: 3 equals: (trashBox currentMessagesDirectory entries , trashBox newMessagesDirectory entries) size.
	self assert: 1 equals: doubleMessageEntry files size
		