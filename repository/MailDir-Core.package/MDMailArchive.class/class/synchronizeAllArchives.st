as yet unclassified
synchronizeAllArchives

	self allInstances do: [:a | a boxes values do: [:box | box synchronizeMessageEntries]]