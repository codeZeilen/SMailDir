profile form
setSentFolderName: aString
	
	self currentProfile archive sentBoxName: aString asString.
	self changed: #getSentFolderName