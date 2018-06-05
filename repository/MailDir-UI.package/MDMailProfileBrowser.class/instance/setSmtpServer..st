profile form
setSmtpServer: aString
	
	self currentProfile smtpServer: aString asString.
	self changed: #getSmtpServer.