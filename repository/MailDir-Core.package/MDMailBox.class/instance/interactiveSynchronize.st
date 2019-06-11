Rack
interactiveSynchronize

	<rackOperationLabel: 'synchronize' inContextMenus: true>

	[self mailArchive synchronize] 
		forkAt: Processor userBackgroundPriority
		named: 'mail dir synchronization: ' , self mailArchive archiveName