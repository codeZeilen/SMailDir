tests
testDetectAndRemoveDuplicates

	| duplicateFile |
	archive synchronizeMessageEntries.
	
	duplicateFile := (boxDirectory / 'cur') fileNamed: '2' , messageEntry file name.
	duplicateFile nextPutAll: messageEntry file readStream contents. 
	duplicateFile flush; close.
	
	archive synchronizeMessageEntries.
	archive detectAndRemoveDuplicateMails.
	
	self assert: 3 equals: box mails size.
	self assert: 3 equals: box allMessageFileEntries size.