meta information
setUnread
	
	self removeOrdinaryFlag: $S.
	
	self file containingDirectory ~= self box newMessagesDirectory
		ifTrue: [self moveFileWithin: self box]	
	