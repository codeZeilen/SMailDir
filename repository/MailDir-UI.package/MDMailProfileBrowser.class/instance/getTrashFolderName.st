profile form
getTrashFolderName
	
	^ ((self currentProfile ifNotNil: [:p | p archive]) ifNotNil: [:a | a trashBoxName]) ifNil: ['']