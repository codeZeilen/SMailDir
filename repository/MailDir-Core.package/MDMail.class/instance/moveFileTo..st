files
moveFileTo: aBox

	| directory |
	self file containingDirectory containingDirectory = aBox fileDirectory ifTrue: [^ self].
	
	directory := self hasBeenRead
		ifTrue: [aBox currentMessagesDirectory]
		ifFalse: [aBox newMessagesDirectory].
	self renameFileTo: (directory fullNameFor: self file name).