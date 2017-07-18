as yet unclassified
newFor: aFileDirectory in: aMailArchive

	^ self new
		fileDirectory: aFileDirectory;
		mailArchive: aMailArchive;
		synchronizeSubBoxes;
		initializeMessageEntries;
		yourself		