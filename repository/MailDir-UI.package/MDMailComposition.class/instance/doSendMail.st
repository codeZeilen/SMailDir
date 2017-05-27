toolbuilder
doSendMail
	
	(SMTPClient openOnHostNamed: self selectedProfile smtpServer port: self selectedProfile smtpServerPort)
		user: self selectedProfile smtpUsername;
		password: self selectedProfile smtpPassword;
		login;
		mailFrom: mailMessage from to: (mailMessage to findTokens: ',') text: mailMessage asSendableText.
		
	self selectedProfile storeSentMessage: mailMessage.