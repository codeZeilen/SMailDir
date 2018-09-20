actions
skipMail

	self skippedMails add: self currentMail messageId.
	
	self refreshCurrentMail