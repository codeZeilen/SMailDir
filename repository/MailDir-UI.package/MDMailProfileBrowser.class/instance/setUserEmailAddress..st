profile form
setUserEmailAddress: aString
	
	self currentProfile userEmailAddress: aString asString.
	self changed: #getUserEmailAddress