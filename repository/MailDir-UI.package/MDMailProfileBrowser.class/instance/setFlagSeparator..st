profile form
setFlagSeparator: aString
	
	self currentProfile archive flagSeparator: aString asString.
	self changed: #getFlagSeparator