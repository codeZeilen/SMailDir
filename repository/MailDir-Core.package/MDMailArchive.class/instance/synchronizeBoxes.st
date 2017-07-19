synchronization
synchronizeBoxes

	| newBoxNames |
	newBoxNames := self readRootBoxNames difference: (self boxes collect: [:b | b boxName]).
	self addBoxesWithNames: newBoxNames.
	self boxes values do: [:b | b synchronizeSubBoxes].
	self updateIndex. 
	self changed.