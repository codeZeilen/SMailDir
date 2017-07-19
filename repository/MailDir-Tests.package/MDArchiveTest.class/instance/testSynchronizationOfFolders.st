tests
testSynchronizationOfFolders

	archiveDirectory createDirectory: 'yetAnotherBox'.
	(archiveDirectory / 'yetAnotherBox') createDirectory: 'new'.
	(archiveDirectory / 'yetAnotherBox') createDirectory: 'cur'.
	
	archive synchronizeBoxes.
	
	self assert: 6 equals: archive boxes size.
	self assert: (archive boxes anySatisfy: [:b | b boxName = 'yetAnotherBox']).