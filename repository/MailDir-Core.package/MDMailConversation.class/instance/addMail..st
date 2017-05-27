accessing
addMail: aMail
	
	^ (mails includes: aMail) ifFalse: [mails add: aMail]
