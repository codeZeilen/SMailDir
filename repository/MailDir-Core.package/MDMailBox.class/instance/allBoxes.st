mails
allBoxes
	
	^ {self} , (self subBoxes gather: [:box | box allBoxes])