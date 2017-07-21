as yet unclassified
testRemoveAnEntry

	| conversation |
	conversation := (MDMailConversation conversationsIn: {newMessageEntry}) anyOne. 
	
	conversation removeMail: newMessageEntry.
	
	self shouldnt: (conversation includes: newMessageEntry).
	