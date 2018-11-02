synchronization
synchronizeBoxes

	| newBoxNames actualBoxNames ownBoxNames |
	actualBoxNames := self readRootBoxNames.
	ownBoxNames := self boxes collect: [:b | b boxName].
	newBoxNames := actualBoxNames difference: ownBoxNames.
	
	self addBoxesWithNames: newBoxNames.
	self boxes values do: [:b | b synchronizeSubBoxes].
	self updateIndex. 
	(ownBoxNames difference: actualBoxNames) do: [:boxName |
		self boxes removeKey: boxName].
	self changed.