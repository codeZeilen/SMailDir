indexing
removeFromIndices: anEntry

	| conversation |
	self mailIdIndex removeKey: anEntry messageId.

	conversation := self conversationForId: anEntry messageId ifAbsent: [self error].
	conversation removeEntry: anEntry.
	self conversationIndex removeKey: anEntry messageId ifAbsent: [].