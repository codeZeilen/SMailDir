files
file: anObject

	fileAccessMutex critical: [anObject class = DosFileDirectory ifTrue: [self halt]. file := anObject]