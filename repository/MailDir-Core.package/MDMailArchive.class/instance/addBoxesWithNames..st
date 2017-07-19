initialize-release
addBoxesWithNames: rootBoxNames

	rootBoxNames do: [:rootBoxName | | rootBox |
		rootBox := MDMailBox newFor: self fileDirectory / rootBoxName in: self.
		self addBox: rootBox named: rootBoxName]
	
	