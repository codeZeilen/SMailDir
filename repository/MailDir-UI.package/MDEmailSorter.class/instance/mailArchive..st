accessing
mailArchive: anObject

	mailArchive := anObject.
	self 
		initializeDefaultFolders;
		refreshCurrentMail.