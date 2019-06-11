tests
testTestingMethods

	self 	
		deny: newMessageEntry isMailConversation;
		assert: newMessageEntry isEmail;
		deny: newMessageEntry isMailBox