as yet unclassified
testGetConversations
	| conversations |

	conversations := MDMailConversation conversationsIn: box mails.
	
	[self assert: 2 equals: conversations size] on: AssertionFailure do: [self halt].
	conversations do: [:c |
		{messageEntry . doubleMessageEntry} includes: c startMail]
	