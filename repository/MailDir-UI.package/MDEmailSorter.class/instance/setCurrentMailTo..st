accessing
setCurrentMailTo: aMailMessage

	self previousMail: mailMessage.
	mailMessage := aMailMessage.
	self 
		changed: #messageText;
		changed: #messageRecipient;
		changed: #messageSubject;
		changed: #messageSender;
		changed: #messageCC;
		changed: #messageBCC;
		changed: #message;
		changed: #messageDateAndTime:;
		changed: #dialogTitle