synchronization
synchronizeMessageEntries

	self subBoxes do: [:b | b synchronizeMessageEntries].
	self synchronizeOwnMessageEntries.
	