files
moveFileWithin: aBox

	| directory |
	self file containingDirectory containingDirectory ~= aBox fileDirectory
		ifTrue: [^ self error: 'This method is only applicable for moving between cur and new folders'].
	
	directory := self hasBeenRead
		ifTrue: [aBox currentMessagesDirectory]
		ifFalse: [aBox newMessagesDirectory].
	self renameFileTo: (directory fullNameFor: self file name).