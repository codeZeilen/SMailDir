profile form
getSmtpUsername
	
	^ (self currentProfile ifNotNil: [:p | p smtpUsername]) ifNil: ['']