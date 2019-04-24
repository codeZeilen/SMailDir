actions
storeSentMessage: aMessage

	(self archive isConfigured and: [self archive isSentBoxSet]) 
		ifTrue: [self archive storeSentMail: aMessage]
		ifFalse: [UIManager inform: self informationOnMailNotBeingStored]