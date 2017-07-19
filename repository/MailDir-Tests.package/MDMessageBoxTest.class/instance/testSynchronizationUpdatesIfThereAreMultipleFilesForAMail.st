tests
testSynchronizationUpdatesIfThereAreMultipleFilesForAMail

	messageEntry file copyTo: box2Directory / 'cur'.
	
	archive synchronizeMessageEntries.
	
	self assert: messageEntry identical: (archive allMails detect: [:m | m messageId = self mailMessageId]).
	self assert: 3 equals: box mails size.
	self assert: 2 equals: box2 mails size.
	self assert: (box2 mails includes: messageEntry).
	self assert: (box mails includes: messageEntry).
	self assert: {box . box2} asSet equals: messageEntry boxes asSet.