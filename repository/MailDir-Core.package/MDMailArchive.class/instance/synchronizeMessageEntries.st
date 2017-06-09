synchronization
synchronizeMessageEntries

	self boxes values do: [:b | b synchronizeMessageEntries].
	self updateIndex. 
	self changed.