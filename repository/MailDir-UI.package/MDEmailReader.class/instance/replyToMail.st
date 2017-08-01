as yet unclassified
replyToMail

	| reply replyText |
	reply := MailMessage replyFor: mailMessage.

	replyText := #('' '') , (mailMessage bodyTextFormatted asString withSqueakLineEndings lines collect: [:l | '>' , l ]) joinSeparatedBy: String cr.
	reply body: ((MIMEDocument 
		contentType: MIMEDocument contentTypePlainText
		content: replyText)
			charset: 'UTF-8';
			yourself).
			
	 MDMailComposition sendMailMessage: reply.
			
	^ true 