toolbuilder
windowLabel

	^ 'Mail Browser: ' , (self boxes size = 1
		ifTrue: [self boxes first boxName , ' of ' , self boxes first mailArchive archiveName]
		ifFalse: [self boxes first mailArchive archiveName]) , ' archive'