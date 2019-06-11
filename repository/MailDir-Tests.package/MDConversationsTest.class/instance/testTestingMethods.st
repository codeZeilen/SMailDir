tests
testTestingMethods

	| conversation |
	conversation := (MDMailConversation conversationsIn: {messageEntry}) anyOne. 
	self 	
		assert: conversation isMailConversation;
		deny: conversation isEmail;
		deny: conversation isMailBox