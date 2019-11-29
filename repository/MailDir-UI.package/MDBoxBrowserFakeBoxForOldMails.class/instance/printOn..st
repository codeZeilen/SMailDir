printing
printOn: aStream

	aStream nextPutAll: '... and '; nextPutAll: mails size asString; nextPutAll: ' Mails ...'