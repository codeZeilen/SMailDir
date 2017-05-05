boxes
allBoxes

	^ self boxes gather: [:box | box allBoxes]