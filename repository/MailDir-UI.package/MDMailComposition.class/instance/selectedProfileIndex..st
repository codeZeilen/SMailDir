accessing
selectedProfileIndex: aNumber

	selectedProfileIndex := aNumber.
	self setSender: self selectedProfile userEmailAddress.
	self changed: #getSender.