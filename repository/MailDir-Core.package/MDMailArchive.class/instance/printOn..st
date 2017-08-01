printing
printOn: aStream

	aStream 
		nextPutAll: 'a MailArchive named ';
		nextPutAll: (self archiveName ifNil: ['Unknown'])