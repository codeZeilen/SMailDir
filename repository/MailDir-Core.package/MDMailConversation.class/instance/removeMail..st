mails
removeMail: aMail

	self startMail = aMail ifTrue: [
		self mails size = 1 
			ifTrue: ["Nevermind"]
			ifFalse: [self startMail: ((self mails copyWithout: self startMail)detect: [:m | (m header fieldNamed: 'in-reply-to' 
						ifAbsent: [self error]) mainValue = self startMail messageId])]].
	mails remove: aMail.