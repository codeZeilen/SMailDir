accessing
mailArchive

	^ mailArchive ifNil: ["This is only necessary as a performance improvement. --pre"
		mailArchive := self boxes first mailArchive]