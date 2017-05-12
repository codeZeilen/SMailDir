instance creation
newAround: aMail in: aMailArchive

	
	^ self new
		addMail: aMail;
		archive: aMailArchive;
		initializeMailsAndStart;
		yourself	