tests
testSetSeveralFlags

	newMessageEntry setRead; setImportant.
	self assert: newMessageEntry hasBeenSeen.
	self assert: newMessageEntry isImportant.
	self assert: newMessageEntry file name = (self newMailFileName , 'S').
	
	newMessageEntry setUnread; setUnimportant.
	self assert: newMessageEntry hasBeenSeen not.
	self assert: newMessageEntry isImportant not.
	self assert: newMessageEntry file name = (self newMailFileName allButLast).