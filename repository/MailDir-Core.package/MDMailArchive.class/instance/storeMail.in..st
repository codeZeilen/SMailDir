public
storeMail: aMailMessage in: aMailBox

	| newMail |
	newMail := MDMail newFor: aMailMessage in: aMailBox.
	newMail setRead.
	newMail moveTo: aMailBox.
	self indexEntry: newMail.
	^ newMail