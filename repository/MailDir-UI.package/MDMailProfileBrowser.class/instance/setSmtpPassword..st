profile form
setSmtpPassword: aString
	
	self currentProfile smtpPassword: aString asString.
	self changed: #getSmtpPassword.