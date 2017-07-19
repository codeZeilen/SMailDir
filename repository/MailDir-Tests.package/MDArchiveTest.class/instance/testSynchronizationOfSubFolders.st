tests
testSynchronizationOfSubFolders

	| newBoxName |
	newBoxName := boxName , '.' , 'yetAnotherBox'.
	archiveDirectory createDirectory: newBoxName.
	(archiveDirectory / newBoxName) createDirectory: 'new'.
	(archiveDirectory / newBoxName) createDirectory: 'cur'.
	
	archive synchronizeBoxes.
	
	self assert: 6 equals: archive allBoxes size.
	self assert: (archive allBoxes anySatisfy: [:b | b boxName = 'yetAnotherBox']).