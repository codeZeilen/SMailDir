accessing
setUp

	| archiveDirectory testDirectory |
	testDirectoryName := self directoryForTestName.
	FileDirectory default createDirectory: testDirectoryName.
	testDirectory := FileDirectory default / testDirectoryName.
	
	archiveName := DateAndTime milliSecondsSinceMidnight asString.
	testDirectory createDirectory: archiveName.
	archiveDirectory := testDirectory / archiveName.
	
	boxName := (DateAndTime milliSecondsSinceMidnight + 1) asString.
	archiveDirectory createDirectory: boxName. 
	boxDirectory := archiveDirectory / boxName.
	boxDirectory createDirectory: 'new'.
	boxDirectory createDirectory: 'cur'.
	
	(boxDirectory / 'new') fileNamed: self newMailFileName. 
	(boxDirectory / 'cur') fileNamed: self mailFileName. 
	
	box2Name := (DateAndTime milliSecondsSinceMidnight + 2) asString.
	archiveDirectory createDirectory: box2Name. 
	box2Directory := archiveDirectory / box2Name.
	box2Directory createDirectory: 'new'.
	box2Directory createDirectory: 'cur'.
	
	archive := MDMailArchive archiveIn: archiveDirectory flagSeparator: $;.
	box := archive boxes detect: [:b | b fileDirectory = boxDirectory].
	box2 := archive boxes detect: [:b | b fileDirectory = box2Directory].
	
	messageEntry := box allMails detect: [:m | m file name = self mailFileName].
	newMessageEntry := box allMails detect: [:m | m file name = self newMailFileName].
	