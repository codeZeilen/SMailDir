accessing
testSetSeveralFlags

	newMessageEntry setRead; setImportant.
	self assert: newMessageEntry hasBeenSeen.
	self assert: newMessageEntry isImportant.
	self assert: newMessageEntry file name = (self newMailFileName , 'S').