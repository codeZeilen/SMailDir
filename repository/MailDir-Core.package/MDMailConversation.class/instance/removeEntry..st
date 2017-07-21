mails
removeEntry: anEntry

	mails remove: anEntry.
	self startMail = anEntry ifTrue: [
		self startMail: ((self mails copyWithout: self startMail) detect: [:m | 
			anEntry messageId = (m header fieldNamed: 'in-reply-to' ifAbsent: [self error]) mainValue])]