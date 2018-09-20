profile form
getSmtpServer
	
	^ (self currentProfile ifNotNil: [:p | p smtpServer]) ifNil: ['']