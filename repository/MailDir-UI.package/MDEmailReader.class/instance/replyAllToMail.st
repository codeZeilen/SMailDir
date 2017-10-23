actions
replyAllToMail

	| reply |
	reply := MailMessage replyAllFor: mailMessage excluding: {}.
	reply body: (self prepareReplyTextFor: mailMessage).
	MDMailComposition sendMailMessage: reply.
			
	^ true 