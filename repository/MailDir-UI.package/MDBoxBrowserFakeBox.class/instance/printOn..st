printing
printOn: aStream

	aStream nextPutAll: '... and '; nextPutAll: self mails size asString; nextPutAll: ' Mails ...'