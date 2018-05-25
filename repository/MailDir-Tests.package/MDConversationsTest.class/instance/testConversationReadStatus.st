tests
testConversationReadStatus

	| conversation |
	conversation := archive conversationForId: messageEntry messageId ifAbsent: [].
	
	conversation setUnread.
	self assert: conversation isUnread.
	
	conversation setRead.
	self assert: conversation hasBeenRead.