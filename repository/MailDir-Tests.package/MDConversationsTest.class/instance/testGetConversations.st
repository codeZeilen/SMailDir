as yet unclassified
testGetConversations
	| conversations |
	self fail.

	"Major bug: We have to index all entries before indexing the conversations as otherwise we create empty conversations! --pre"

	conversations := MDMailConversation conversationsIn: box mails.
	
	[self assert: 2 equals: conversations size] on: AssertionFailure do: [self halt].
	conversations do: [:c |
		{messageEntry . doubleMessageEntry} includes: c startMail]
	