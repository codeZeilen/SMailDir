indexing
indexIntoConversationIndex: anEntry

	| conversation startMailId |
	startMailId := self determineStartMailIdFor: anEntry.
	conversation := (self conversationIndex includesKey: startMailId)
		ifTrue: [	self conversationIndex at: startMailId]
		ifFalse: [ | newConversation |
				newConversation := MDMailConversation new
					startMail: anEntry;
					archive: self;
					yourself.
				self conversationIndex at: startMailId put: newConversation.
				newConversation ].
			
	conversation addMail: anEntry.
	self conversationIndex at: anEntry messageId put: conversation.