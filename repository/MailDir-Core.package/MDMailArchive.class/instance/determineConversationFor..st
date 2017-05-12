indexing
determineConversationFor: anEntry

	| predecessorId |
	predecessorId := (anEntry header fieldNamed: 'in-reply-to' 
		ifAbsent: [^ anEntry messageId]) mainValue.
		
	predecessorId = anEntry messageId ifTrue: [^ predecessorId]. 
		
	^ self determineConversationFor: (self messageEntryForId: predecessorId ifAbsent: [^predecessorId])