mails
moveTo: aBox

	(self box = aBox and: [self box mails includes: self]) ifTrue: [^ self].

	self box removeMail: self.
	aBox addMail: self.
	self box: aBox.