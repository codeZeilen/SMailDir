profile form
setFlagSeparator: aString
	
	aString ifEmpty: [^ true].
	self currentProfile archive flagSeparator: aString asString first.
	self changed: #getFlagSeparator.
	^ true