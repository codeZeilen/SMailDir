initialize-release
initializeDefaultFolders

	self folders at: (self numberOfButtonsPerRow * 2) put: (self mailArchive trashBox).
	(self mailArchive archiveBox ifNotNil: [:archiveBox | self folders at: 1 put: archiveBox])
	