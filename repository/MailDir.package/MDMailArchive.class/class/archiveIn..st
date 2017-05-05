as yet unclassified
archiveIn: aFileDirectory

	^ self new
		fileDirectory: aFileDirectory;
		initializeBoxes;
		indexMails;
		yourself