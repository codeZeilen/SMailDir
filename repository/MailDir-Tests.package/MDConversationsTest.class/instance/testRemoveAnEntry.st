as yet unclassified
testRemoveAnEntry

	| conversation |
	conversation := (MDMailConversation conversationsIn: {newMessageEntry}) anyOne. 
	
	conversation removeEntry: newMessageEntry.
	
	self shouldnt: (conversation includes: newMessageEntry).
	