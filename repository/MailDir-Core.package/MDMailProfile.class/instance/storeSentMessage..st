actions
storeSentMessage: aMessage
	
	(self archive isConfigured and: [self archive isSentBoxSet]) 
		ifTrue: [self archive storeSentMail: aMessage]
		ifFalse: [self inform: self informationOnMailNotBeingStored]