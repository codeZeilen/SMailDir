as yet unclassified
startSynchronizationProcess

	[[self synchronizeAllArchives. (Delay forSeconds: 60) wait] repeat] forkAt: 30 named: 'mail dir synchronization process'