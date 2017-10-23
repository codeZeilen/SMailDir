tests
testCreateNewSubbox
	
	box createSubBoxNamed: 'myNewSubBox'.
	
	self assert: (archiveDirectory directoryExists: (boxName , '.' , 'myNewSubBox')).
	self assert: (archiveDirectory directoryExists: (boxName , '.' , 'myNewSubBox/cur')).
	self assert: (archiveDirectory directoryExists: (boxName , '.' , 'myNewSubBox/new')).
	self assert: (archiveDirectory directoryExists: (boxName , '.' , 'myNewSubBox/tmp')).
	self assert: box subBoxes size equals: 1.