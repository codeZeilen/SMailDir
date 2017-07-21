tests
testAfterLastRemoveTheMailIsRemoved

	| conversation |
	newMessageEntry file delete.
	conversation := (MDMailConversation conversationsIn: {newMessageEntry}) anyOne. 
	
	archive synchronize.
	
	self 
		assert: newMessageEntry files isEmpty;
		shouldnt: (box allMails includes: newMessageEntry);
		shouldnt: (archive mailIdIndex includesKey: newMessageEntry messageId);
		shouldnt: (archive conversationIndex includesKey: newMessageEntry messageId);
		shouldnt: (conversation includes: newMessageEntry)
	