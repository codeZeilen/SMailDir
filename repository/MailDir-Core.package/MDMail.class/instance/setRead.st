meta information
setRead
	
	| oldFile |
	self addOrdinaryFlag: $S.
	
	self file containingDirectory ~= self box currentMessagesDirectory
		ifTrue: [
			oldFile := self file.
			oldFile copyTo: self box currentMessagesDirectory.
			self file: self box currentMessagesDirectory / self file name.
			oldFile delete.]	
	
