profile form
getArchiveFolderName
	
	^ ((self currentProfile ifNotNil: [:p | p archive]) ifNotNil: [:a | a archiveBoxName]) ifNil: ['']