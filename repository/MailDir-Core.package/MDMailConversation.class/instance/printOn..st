printing
printOn: aStream

	aStream nextPutAll: self startMail sender.
	aStream tab.
	aStream nextPutAll: self startMail subject