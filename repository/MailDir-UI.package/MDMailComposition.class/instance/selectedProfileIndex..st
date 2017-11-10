accessing
selectedProfileIndex: aNumber

	aNumber = 0 ifFalse: [selectedProfileIndex := aNumber].
	self changed: #selectedProfileIndex.
	
	self messageSender: self selectedProfile userEmailAddress.
	self changed: #messageSender.