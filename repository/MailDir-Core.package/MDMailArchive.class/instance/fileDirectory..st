accessing
fileDirectory: anObject

	| oldDirectory |
	oldDirectory := fileDirectory.
	fileDirectory := anObject.
	oldDirectory ~= fileDirectory ifTrue: [
		self migrateBoxPaths]