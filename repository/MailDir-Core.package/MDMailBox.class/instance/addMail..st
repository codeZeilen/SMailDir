mails
addMail: anEntry

	self mails addIfNotPresent: anEntry.
	self changed