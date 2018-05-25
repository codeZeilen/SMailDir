indexing
updateIndex

	| removedMails |
	removedMails := self mailIdIndex values select: [:m | m isStoredInAnyBox not].
	
	removedMails do: [:m | 
		(self conversationForId: m messageId ifAbsent: [self error: 'conversation index out of sync'])
			removeMail: m].
	
	self protectIndexAccessDuring: [removedMails do: [:m |
		self conversationIndex removeKey: m messageId.
		self mailIdIndex removeKey: m messageId]]