as yet unclassified
allBoxes
	
	^ {self} , (self subBoxes gather: [:box | box allBoxes])