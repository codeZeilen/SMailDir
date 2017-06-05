as yet unclassified
testSetAllMailsRead

	box setAllMailsRead.
	
	self assert: newMessageEntry hasBeenSeen.
	self assert: messageEntry hasBeenSeen.
	self assert: doubleMessageEntry hasBeenSeen. 