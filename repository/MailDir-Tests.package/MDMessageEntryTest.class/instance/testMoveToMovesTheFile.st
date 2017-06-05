accessing
testMoveToMovesTheFile
	
	messageEntry moveTo: box2.
	
	self assert: 2 equals: box2 mails size.
	self assert: (box2Directory / 'cur') entries notEmpty.
	
	self assert: ((box2Directory / 'cur') entries includes: messageEntry file)
