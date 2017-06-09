accessing
setUp

	| archiveDirectory testDirectory tmpFile |
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
	
	tmpFile := (boxDirectory / 'new') fileNamed: self newMailFileName.
	tmpFile nextPutAll: self newMailFileContent.
	tmpFile flush; close.
	tmpFile := (boxDirectory / 'cur') fileNamed: self mailFileName.
	tmpFile nextPutAll: self mailFileContent. 
	tmpFile flush; close.
	tmpFile := (boxDirectory / 'cur') fileNamed: self doubleMailFileName1.
	tmpFile nextPutAll: self doubleMailFileContent. 
	tmpFile flush; close.
	
	box2Name := (DateAndTime milliSecondsSinceMidnight + 2) asString.
	archiveDirectory createDirectory: box2Name. 
	box2Directory := archiveDirectory / box2Name.
	box2Directory createDirectory: 'new'.
	box2Directory createDirectory: 'cur'.
	
	tmpFile := (box2Directory / 'cur') fileNamed: self doubleMailFileName2.
	tmpFile nextPutAll: self doubleMailFileContent. 
	tmpFile flush; close.
	
	trashBoxName := (DateAndTime milliSecondsSinceMidnight) asString , 'Trash'.
	archiveDirectory createDirectory: trashBoxName. 
	trashBoxDirectory := archiveDirectory / trashBoxName.
	trashBoxDirectory createDirectory: 'new'.
	trashBoxDirectory createDirectory: 'cur'.

	archiveBoxName := (DateAndTime milliSecondsSinceMidnight) asString , 'Archive'.
	archiveDirectory createDirectory: archiveBoxName. 
	archiveBoxDirectory := archiveDirectory / archiveBoxName.
	archiveBoxDirectory createDirectory: 'new'.
	archiveBoxDirectory createDirectory: 'cur'.
	
	sentBoxName := (DateAndTime milliSecondsSinceMidnight) asString , 'Sent'.
	archiveDirectory createDirectory: sentBoxName. 
	sentBoxDirectory := archiveDirectory / sentBoxName.
	sentBoxDirectory createDirectory: 'new'.
	sentBoxDirectory createDirectory: 'cur'.
	
	archive := MDMailArchive archiveIn: archiveDirectory flagSeparator: $;.
	archive trashBoxName: trashBoxName.
	archive archiveBoxName: archiveBoxName.
	archive sentBoxName: sentBoxName.
	box := archive boxes detect: [:b | b fileDirectory = boxDirectory].
	box2 := archive boxes detect: [:b | b fileDirectory = box2Directory].
	trashBox := archive boxes detect: [:b | b fileDirectory = trashBoxDirectory].
	archiveBox := archive boxes detect: [:b | b fileDirectory = archiveBoxDirectory].
	sentBox := archive boxes detect: [:b | b fileDirectory = sentBoxDirectory].
	
	messageEntry := archive allMails detect: [:m | m messageId = self mailMessageId].
	newMessageEntry := archive allMails detect: [:m | m messageId = self newMailMessageId].
	doubleMessageEntry := archive allMails detect: [:m | m messageId = self doubleMailMessageId].