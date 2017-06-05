as yet unclassified
archiveIn: aFileDirectory flagSeparator: aString

	^ self new
		flagSeparator: aString;
		fileDirectory: aFileDirectory;
		initializeBoxes;
		yourself