profile form
setSmtpServerPort: aString
	
	self currentProfile smtpServerPort: aString asString asNumber.
	self changed: #getSmtpServerPort.