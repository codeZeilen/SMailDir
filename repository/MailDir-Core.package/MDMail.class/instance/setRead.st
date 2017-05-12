meta information
setRead
	
	self addOrdinaryFlag: $S.
	
	self file containingDirectory ~= self box currentMessagesDirectory
		ifTrue: [self moveFileWithin: self box].
	
	self changed.