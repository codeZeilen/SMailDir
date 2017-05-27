initialize-release
initializeBoxes

	| boxNames rootBoxNames |
	boxNames := self readBoxNames.
	rootBoxNames := (boxNames collect: [:boxName | (boxName findTokens: '.') first]) asSet.
	
	rootBoxNames do: [:rootBoxName | | rootBox |
		rootBox := MDMailBox newFor: self fileDirectory / rootBoxName in: self.
		self addBox: rootBox named: rootBoxName]
	