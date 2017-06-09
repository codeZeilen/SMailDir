tests
testSynchronizationRemovesDeletedFiles

	| tmpBox |
	tmpBox := messageEntry boxes first.
	messageEntry file delete.
	
	archive synchronizeMessageEntries.
	
	self assert: messageEntry boxes isEmpty.
	self assert: (tmpBox mails includes: messageEntry) not. 