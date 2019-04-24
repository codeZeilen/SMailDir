tests
testTrashDoubleMessage

	doubleMessageEntry moveToTrash.
	
	self assert: 1 equals: trashBox mails size.
	self assert: 1 equals: trashBox currentMessagesDirectory entries size.
	
	self assert: 1 equals: doubleMessageEntry files size.