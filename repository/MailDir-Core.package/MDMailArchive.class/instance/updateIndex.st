indexing
updateIndex

	| removedMails |
	removedMails := self mailIdIndex values select: [:m | m isStoredInAnyBox not].
	
	removedMails do: [:m | 
		self conversationForId: m messageId 
			ifAbsent: ["self error: 'conversation index out of sync'"]
			ifPresent: [:conversation | conversation removeMail: m]].
	
	self protectIndexAccessDuring: [removedMails do: [:m |
		self conversationIndex removeKey: m messageId ifAbsent: ["skip"].
		self mailIdIndex removeKey: m messageId ifAbsent: ["skip"]]]