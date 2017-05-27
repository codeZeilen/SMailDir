flags
modifyFlags: aBlock

	| messageParts fileName flags flagsString flagParts |
	messageParts := self file name findTokens: self flagSeparator. 
	flagParts := messageParts last splitBy: '2,'.
	flagParts size = 1 ifTrue: [flagParts add: ''].
	flags := flagParts last.
	
	flags := aBlock value: flags.
	
	flagsString := self flagSeparator asString 
		, (flagParts allButLast joinSeparatedBy: '') 
		, '2,' 
		, flags sorted asByteArray asString. 
	
	fileName := (messageParts allButLast , flagsString) joinSeparatedBy: ''.
	self renameFileTo: (self file containingDirectory fullNameFor: fileName).
	