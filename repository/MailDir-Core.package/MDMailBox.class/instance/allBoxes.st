accessing
allBoxes
	
	^ {self} , (self subBoxes gather: [:box | box allBoxes])