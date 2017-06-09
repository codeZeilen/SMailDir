as yet unclassified
testMoveConversations

	| conversations mailsOfBox2 |
	mailsOfBox2 := box2 mails.
	conversations := MDMailConversation conversationsIn: box2 mails.
	
	conversations do: [:c | c moveTo: box].
	
	self assert: box2 isEmpty.
	mailsOfBox2 do: [:m |
		self assert: 1 equals: m files]