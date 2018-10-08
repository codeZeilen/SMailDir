fixtures
addNewMail

	(boxDirectory / 'cur') newFileNamed: self addedMailFileName do: [:file |
		file nextPutAll: self addedMailFileContent].