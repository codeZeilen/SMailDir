tests
testSynchronizationOfFoldersRemovesBoxes

	archiveDirectory createDirectory: 'yetAnotherBox'.
	(archiveDirectory / 'yetAnotherBox') createDirectory: 'new'.
	(archiveDirectory / 'yetAnotherBox') createDirectory: 'cur'.
	
	archive synchronizeBoxes.
	
	(archiveDirectory / 'yetAnotherBox') deleteDirectory: 'new'.
	(archiveDirectory / 'yetAnotherBox') deleteDirectory: 'cur'.
	archiveDirectory deleteDirectory: 'yetAnotherBox'.
	
	archive synchronizeBoxes.
	
	self assert: 5 equals: archive boxes size.
	self assert: (archive boxes noneSatisfy: [:b | b boxName = 'yetAnotherBox']).