tests
testSynchronizationMovesMovedFiles

	"Move the file"
	messageEntry file copyTo: box2Directory / 'cur'.
	messageEntry file delete.
	
	archive synchronizeMessageEntries.
	
	self assert: messageEntry identical: (archive allMails detect: [:m | m messageId = self mailMessageId]).
	self assert: 2 equals: box mails size.
	self assert: 2 equals: box2 mails size.
	self assert: (box2 mails includes: messageEntry).
	self assert: (messageEntry boxes includes: box2).