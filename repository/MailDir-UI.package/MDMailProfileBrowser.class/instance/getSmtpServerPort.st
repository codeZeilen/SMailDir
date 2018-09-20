profile form
getSmtpServerPort
	
	^ ((self currentProfile ifNotNil: [:p | p smtpServerPort]) ifNil: '') asString