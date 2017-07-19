initialize-release
initializeBoxes

	| rootBoxNames |
	rootBoxNames := self readRootBoxNames.
	self addBoxesWithNames: rootBoxNames.
	
	