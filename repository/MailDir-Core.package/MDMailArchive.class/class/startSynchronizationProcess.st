synchronization
startSynchronizationProcess

	[[self synchronizeAllArchives. 
	  (Delay forSeconds: self synchronizationProcessPeriod asSeconds) wait] repeat] 
		forkAt: 30 named: 'mail dir synchronization process'