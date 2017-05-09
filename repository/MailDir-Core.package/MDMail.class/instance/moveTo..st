mails
moveTo: aBox
	
	(self box = aBox and: [self box mails includes: self]) ifTrue: [^ self].

	fileAccessMutex critical: [
		self moveFileTo: aBox.
		self box removeMail: self.
		aBox addMail: self]