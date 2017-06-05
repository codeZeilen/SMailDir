files
copyFileTo: aBox

	| directory |	
	directory := self hasBeenRead
		ifTrue: [aBox currentMessagesDirectory]
		ifFalse: [aBox newMessagesDirectory].
		
	(directory fileExists: self file readStream localName)
		ifFalse: [self file copyTo: directory].

	^ directory entryAt: self file readStream localName