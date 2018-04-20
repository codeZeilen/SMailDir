files
renameFile: aFile to: fileName

	fileAccessMutex critical: [ | path |
		(aFile containingDirectory fileExists: fileName)
			ifFalse: [aFile containingDirectory rename: aFile name toBe: fileName].
		path := FileDirectory default / fileName.
		^ path containingDirectory entryAt: path localName]