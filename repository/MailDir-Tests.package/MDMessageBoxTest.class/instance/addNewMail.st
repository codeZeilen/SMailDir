fixtures
addNewMail

	| tmpFile |
	tmpFile := (boxDirectory / 'cur') fileNamed: self addedMailFileName.
	tmpFile nextPutAll: self addedMailFileContent. 
	tmpFile flush; close.