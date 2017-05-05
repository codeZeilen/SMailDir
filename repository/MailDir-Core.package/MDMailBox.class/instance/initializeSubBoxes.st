as yet unclassified
initializeSubBoxes

	| allSubBoxNames namesOfDirectSubBoxes |
	
	allSubBoxNames := self mailArchive readBoxNames select: [:boxName | (boxName splitBy: '.') beginsWith: (self fullBoxName splitBy: '.')].
	namesOfDirectSubBoxes := allSubBoxNames select: [:boxName | ((self fullBoxName splitBy: '.') size + 1) = (boxName splitBy: '.') size].
	self subBoxes: (namesOfDirectSubBoxes collect: [:boxName | MDMailBox newFor: self fileDirectory containingDirectory / boxName in: self mailArchive]).
	self flag: #TODO. "In a second round we should also look into the directory to see if there are any other folders besides the maildir ones"