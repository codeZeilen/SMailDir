initialize-release
readRootBoxNames

	| boxNames |
	boxNames := self readBoxNames.
	^ (boxNames collect: [:boxName | (boxName findTokens: '.') first]) asSet.
	