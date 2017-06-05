accessing
testHasBeenRead

	self assert: messageEntry hasBeenSeen.
	self assert: newMessageEntry hasBeenSeen not.
	self assert: doubleMessageEntry hasBeenSeen.