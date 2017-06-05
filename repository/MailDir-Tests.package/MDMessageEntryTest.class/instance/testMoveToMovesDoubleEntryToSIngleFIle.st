accessing
testMoveToMovesDoubleEntryToSIngleFIle
	
	doubleMessageEntry moveTo: box2.
	
	self assert: 1 equals: doubleMessageEntry files size.
	self assert: ((box2Directory / 'cur') entries includes: doubleMessageEntry file).