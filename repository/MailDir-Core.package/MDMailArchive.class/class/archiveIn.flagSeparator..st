instance creation
archiveIn: aFileDirectory flagSeparator: aString

	^ self new
		flagSeparator: aString;
		fileDirectory: aFileDirectory;
		initializeBoxes;
		indexConversations;
		yourself