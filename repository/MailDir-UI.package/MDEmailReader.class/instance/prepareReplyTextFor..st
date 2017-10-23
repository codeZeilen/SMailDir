private
prepareReplyTextFor: mailMessage
	
	| replyText |
	replyText := #('' '') , (mailMessage bodyTextFormatted asString withSqueakLineEndings lines collect: [:l | '>' , l ]) joinSeparatedBy: String cr.
	^ (MIMEDocument 
		contentType: MIMEDocument contentTypePlainText
		content: replyText)
			charset: 'UTF-8';
			yourself.