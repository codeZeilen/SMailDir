profile form
getSentFolderName
	
	^ ((self currentProfile ifNotNil: [:p | p archive]) ifNotNil: [:a | a sentBoxName]) ifNil: ['']