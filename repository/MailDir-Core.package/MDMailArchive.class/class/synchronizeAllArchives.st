as yet unclassified
synchronizeAllArchives

	self allInstances do: [:a | a synchronizeBoxes . a synchronizeMessageEntries]