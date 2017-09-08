accessing
addMail: aMail
	
	self invalidateSenderNames.
	^ (mails includes: aMail) ifFalse: [mails add: aMail]
