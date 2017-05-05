as yet unclassified
initializeBoxes

	| boxNames rootBoxNames |
	boxNames := self readBoxNames.
	rootBoxNames := boxNames select: [:boxName | (boxName count: [:c | c = $.]) = 0].
	
	rootBoxNames do: [:rootBoxName | | rootBox |
		rootBox := MDMailBox newFor: self fileDirectory / rootBoxName in: self.
		self addBox: rootBox named: rootBoxName]
	