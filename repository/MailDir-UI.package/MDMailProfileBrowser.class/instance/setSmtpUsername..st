profile form
setSmtpUsername: aString
	
	self currentProfile smtpUsername: aString asString.
	self changed: #getSmtpUsername.