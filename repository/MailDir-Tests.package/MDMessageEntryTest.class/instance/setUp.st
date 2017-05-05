accessing
setUp

	| archiveDirectory testDirectory |
	testDirectoryName := 'mailDirTestDir8984'.
	FileDirectory default createDirectory: testDirectoryName.
	testDirectory := FileDirectory default / testDirectoryName.
	
	archiveName := DateAndTime milliSecondsSinceMidnight asString.
	testDirectory createDirectory: archiveName.
	archiveDirectory := testDirectory / archiveName.
	archive := MDMailArchive archiveIn: archiveDirectory.
	archive flagSeparator: $;.
	
	boxName := (DateAndTime milliSecondsSinceMidnight + 1) asString.
	archiveDirectory createDirectory: boxName. 
	boxDirectory := archiveDirectory / boxName.
	
	boxDirectory createDirectory: 'new'.
	boxDirectory createDirectory: 'cur'.
	box := MDMailBox newFor: boxDirectory in: archive.
	
	(boxDirectory / 'new') fileNamed: self newMailFileName. 
	(boxDirectory / 'cur') fileNamed: self mailFileName. 
	messageEntry := (MDMail newAt: (boxDirectory / 'cur') entries first in: box).
	newMessageEntry := (MDMail newAt: (boxDirectory / 'new') entries first in: box)