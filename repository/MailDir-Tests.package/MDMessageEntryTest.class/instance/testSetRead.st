accessing
testSetRead

	newMessageEntry setRead.
	self assert: newMessageEntry hasBeenSeen.
	self assert: newMessageEntry file name = (self newMailFileName , 'S').
	self assert: newMessageEntry file containingDirectory = (boxDirectory / 'cur')