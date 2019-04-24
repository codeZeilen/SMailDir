indexing
determineStartMailIdFor: anEntry

	| predecessorId |
	predecessorId := anEntry inReplyToMessageId.
		
	predecessorId = anEntry messageId ifTrue: [^ predecessorId]. 
		
	^ self determineStartMailIdFor: (self messageEntryForId: predecessorId ifAbsent: [^ anEntry messageId])