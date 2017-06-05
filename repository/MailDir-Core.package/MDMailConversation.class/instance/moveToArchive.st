mails
moveToArchive
	
	self setRead.
	mails do: [:m | m moveToArchive]