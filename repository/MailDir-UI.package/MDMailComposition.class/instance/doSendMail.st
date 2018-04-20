toolbuilder
doSendMail
	
	| mailMessageToSend recipients |
	mailMessage messageId: self selectedProfile newMessageId.
	
	mailMessageToSend := mailMessage deepCopy.
	recipients := (mailMessage to findTokens: ',') , 
					(mailMessage cc findTokens: ',') , 
					(mailMessage bcc findTokens: ',').
	recipients := recipients asSet asOrderedCollection collect: [:r | r withBlanksTrimmed].
	mailMessageToSend bcc: ''.
	
	(SMTPClient openOnHostNamed: self selectedProfile smtpServer port: self selectedProfile smtpServerPort)
		user: self selectedProfile smtpUsername;
		password: self selectedProfile smtpPassword;
		login;
		mailFrom: mailMessage from to: recipients text: mailMessageToSend asSendableText.
		
	self selectedProfile storeSentMessage: mailMessage.