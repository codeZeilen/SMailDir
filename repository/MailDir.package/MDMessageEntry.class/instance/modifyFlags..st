accessing
modifyFlags: aBlock

	| messageParts fileName flags flagsString flagParts |
	messageParts := self file name findTokens: self flagSeparator. 
	flagParts := messageParts last splitBy: '2,'.
	flags := flagParts last.
	
	flags := aBlock value: flags.
	
	flagsString := self flagSeparator asString 
		, (flagParts allButLast joinSeparatedBy: '') 
		, '2,' 
		, flags sorted asByteArray asString. 
	
	fileName := (messageParts allButLast , flagsString) joinSeparatedBy: ''.
	self file containingDirectory rename: self file name toBe: fileName.
	self file: self file containingDirectory / fileName.
	