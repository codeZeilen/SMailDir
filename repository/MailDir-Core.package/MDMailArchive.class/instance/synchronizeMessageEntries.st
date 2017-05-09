synchronization
synchronizeMessageEntries

	self boxes values do: [:b | b synchronizeMessageEntries].
	self changed.