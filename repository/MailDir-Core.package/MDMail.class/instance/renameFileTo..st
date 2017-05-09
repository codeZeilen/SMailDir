files
renameFileTo: fileName

	fileAccessMutex critical: [ | path |
		self file containingDirectory rename: self file name toBe: fileName.
		path := FileDirectory default / fileName.
		self file: (path containingDirectory entryAt: path localName).]