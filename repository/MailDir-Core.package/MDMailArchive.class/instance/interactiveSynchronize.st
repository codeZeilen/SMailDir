Rack
interactiveSynchronize

	<rackOperationLabel: 'synchronize' inContextMenus: true>

	[self synchronize] 
		forkAt: Processor userBackgroundPriority
		named: 'mail dir synchronization: ' , self archiveName