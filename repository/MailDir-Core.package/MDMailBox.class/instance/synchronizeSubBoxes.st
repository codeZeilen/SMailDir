synchronization
synchronizeSubBoxes

	| allSubBoxNames namesOfDirectSubBoxes existingBoxes addedBoxNames removedBoxNames |
	
	allSubBoxNames := self mailArchive readBoxNames select: [:boxName | 
		(boxName splitBy: '.') beginsWith: (self fullBoxName splitBy: '.')].
	namesOfDirectSubBoxes := allSubBoxNames select: [:boxName | 
		((self fullBoxName splitBy: '.') size + 1) = (boxName splitBy: '.') size].
	namesOfDirectSubBoxes := namesOfDirectSubBoxes asSet.
	existingBoxes := (self subBoxes collect: [:box | box fullBoxName]) asSet.
	
	addedBoxNames := namesOfDirectSubBoxes difference: existingBoxes.
	removedBoxNames := existingBoxes difference: namesOfDirectSubBoxes.

	self subBoxes addAll: (addedBoxNames collect: 
		[:boxName | MDMailBox 
						newFor: self fileDirectory containingDirectory / boxName 
						in: self mailArchive]).
	self subBoxes removeAllFoundIn: (self subBoxes select: [:b | removedBoxNames includes: b fullBoxName]).
	self flag: #TODO. "In a second round we should also look into the directory to see if there are any other folders besides the maildir ones. And also remove the removed boxes... --pre".
	
	self changed.