accessing
addMail: aMail
	
	^ (self mails includes: aMail) ifFalse: [self mails add: aMail]
