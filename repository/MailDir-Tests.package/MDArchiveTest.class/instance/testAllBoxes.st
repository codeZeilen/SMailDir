tests
testAllBoxes

	self assert: {box . box2 . trashBox . archiveBox . sentBox} asSet equals: archive allBoxes asSet