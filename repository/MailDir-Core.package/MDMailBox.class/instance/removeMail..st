mails
removeMail: anEntry
	
	self mails remove: anEntry ifAbsent: [].
	
	self changed.