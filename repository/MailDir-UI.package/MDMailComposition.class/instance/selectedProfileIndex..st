accessing
selectedProfileIndex: aNumber

	aNumber = 0 ifFalse: [selectedProfileIndex := aNumber].
	self changed: #selectedProfileIndex.
	
	self setSender: self selectedProfile userEmailAddress.
	self changed: #getSender.