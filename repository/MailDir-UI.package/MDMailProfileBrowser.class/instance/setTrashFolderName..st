profile form
setTrashFolderName: aString
	
	self currentProfile archive trashBoxName: aString asString.
	self changed: #getTrashFolderName