as yet unclassified
testGetConversations
	| conversations |

	conversations := MDMailConversation conversationsIn: box mails.
	
	self assert: conversations anyOne notEmpty.
	self assert: 2 equals: conversations size.
	conversations do: [:c |
		{messageEntry . doubleMessageEntry} includes: c startMail]
	