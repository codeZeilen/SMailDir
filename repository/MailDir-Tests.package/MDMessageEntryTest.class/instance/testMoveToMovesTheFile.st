accessing
testMoveToMovesTheFile

"	messageEntry moveTo: box2.
	
	self assert: box2 mails size equals: 1.
	self assert: (box2Directory / 'cur') entries notEmpty.
	
	self assert: messageEntry file = (box2Directory / 'cur') entries first"
