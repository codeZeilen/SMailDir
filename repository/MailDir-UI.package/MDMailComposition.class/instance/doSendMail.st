toolbuilder
doSendMail
	
	mailMessage messageId: self selectedProfile newMessageId.
	
	[(SMTPClient openOnHostNamed: self selectedProfile smtpServer port: self selectedProfile smtpServerPort)
		user: self selectedProfile smtpUsername;
		password: self selectedProfile smtpPassword;
		login;
		mailFrom: mailMessage from to: (mailMessage to findTokens: ',') text: mailMessage asSendableText.]
			on: Error
			do: [:e |
				(self buildWith: MorphicToolBuilder new) openInWorld.
				e signal.].
		
	self selectedProfile storeSentMessage: mailMessage.