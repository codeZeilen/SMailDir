private
addBox: aBox with: aFile

	mailArchive := aBox mailArchive. "This is only necessary as a performance improvement. --pre"
	^ self entries at: aBox put: aFile