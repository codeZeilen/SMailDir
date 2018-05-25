actions
moveMailTo: aMDMailBox 
	
	| mailDirEntry |
	mailDirEntry := self mailArchive 
		messageEntryForId: (self currentMail messageId) 
		ifAbsent: [self error: 'Invalid mail'].
	mailDirEntry moveTo: aMDMailBox.
	self refreshCurrentMail.