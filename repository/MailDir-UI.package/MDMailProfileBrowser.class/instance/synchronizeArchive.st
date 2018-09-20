actions
synchronizeArchive
	
	^ self currentProfile ifNotNil: [:p | p archive ifNotNil: [:a | a synchronize]]