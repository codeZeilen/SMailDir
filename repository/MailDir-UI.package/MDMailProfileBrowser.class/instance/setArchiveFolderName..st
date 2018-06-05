profile form
setArchiveFolderName: aString
	
	self currentProfile archive archiveBoxName: aString asString.
	self changed: #getArchiveFolderName