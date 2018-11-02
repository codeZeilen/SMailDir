tests
testSynchronizationOfSubFoldersRemovesSubBoxes

	| newBoxName |
	newBoxName := boxName , '.' , 'yetAnotherBox'.
	archiveDirectory createDirectory: newBoxName.
	(archiveDirectory / newBoxName) createDirectory: 'new'.
	(archiveDirectory / newBoxName) createDirectory: 'cur'.
	
	archive synchronizeBoxes.
	
	newBoxName := boxName , '.' , 'yetAnotherBox'.
	(archiveDirectory / newBoxName) deleteDirectory: 'new'.
	(archiveDirectory / newBoxName) deleteDirectory: 'cur'.
	archiveDirectory deleteDirectory: newBoxName.
	
	archive synchronizeBoxes.
	
	self assert: 5 equals: archive allBoxes size.
	self assert: (archive allBoxes noneSatisfy: [:b | b boxName = 'yetAnotherBox']).