profile form
getSmtpPassword
	
	^ (self currentProfile ifNotNil: [:p | p smtpPassword]) ifNil: [''] 