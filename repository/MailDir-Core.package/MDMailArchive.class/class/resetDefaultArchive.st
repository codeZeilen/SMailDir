as yet unclassified
resetDefaultArchive

	Default ifNotNil: [:a |
		a fileDirectory recursiveDelete.
		Default := nil].