actions
replyToMail

	| reply |
	reply := MailMessage replyFor: mailMessage.
	reply body: (self prepareReplyTextFor: mailMessage).
	MDMailComposition sendMailMessage: reply.
			
	^ true 