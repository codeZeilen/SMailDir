mails
removeMail: aMail

	self invalidateSenderNames.
	mails remove: aMail ifAbsent: [].