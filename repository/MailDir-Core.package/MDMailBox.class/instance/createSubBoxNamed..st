boxes
createSubBoxNamed: aString 
	
	| directoryName |
	directoryName := self fullBoxName , $. , aString.
	
	self mailArchive fileDirectory assureExistenceOfPath: directoryName.
	(self mailArchive fileDirectory / directoryName)
		assureExistenceOfPath: 'new';
		assureExistenceOfPath: 'cur';
		assureExistenceOfPath: 'tmp'.
		
	self synchronizeSubBoxes.