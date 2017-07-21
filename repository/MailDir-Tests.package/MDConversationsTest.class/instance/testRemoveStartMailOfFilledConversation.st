as yet unclassified
testRemoveStartMailOfFilledConversation

	| conversation |
	conversation := (MDMailConversation conversationsIn: {messageEntry}) anyOne. 
	
	conversation removeMail: messageEntry.
	
	self 
		shouldnt: (conversation includes: messageEntry);
		should: conversation startMail = newMessageEntry.
	