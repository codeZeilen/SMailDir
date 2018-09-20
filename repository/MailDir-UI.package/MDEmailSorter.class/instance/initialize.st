initialize-release
initialize

	super initialize.
	
	self folders: (Array new: self numberOfButtonsPerRow * 2).
	self skippedMails: Set new