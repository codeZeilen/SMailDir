as yet unclassified
startSynchronizationProcess

	[[self synchronizeAllArchives. (Delay forSeconds: 60) wait] doWhileTrue: true] forkAt: 30