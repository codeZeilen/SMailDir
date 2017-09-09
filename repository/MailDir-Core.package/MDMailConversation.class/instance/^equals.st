comparing
= anotherConversation

	^ anotherConversation isMailConversation 
		and: [self startMail = anotherConversation startMail]