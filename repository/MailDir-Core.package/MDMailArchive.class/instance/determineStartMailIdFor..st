indexing
determineStartMailIdFor: anEntry

	| predecessorId |
	predecessorId := (anEntry header fieldNamed: 'in-reply-to' 
		ifAbsent: [^ anEntry messageId]) mainValue.
		
	predecessorId = anEntry messageId ifTrue: [^ predecessorId]. 
		
	^ self determineStartMailIdFor: (self messageEntryForId: predecessorId ifAbsent: [^ anEntry messageId])