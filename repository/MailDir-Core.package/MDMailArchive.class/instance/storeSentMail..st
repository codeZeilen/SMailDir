public
storeSentMail: aMailMessage

	| newMail |
	newMail := MDMail newFor: aMailMessage in: self sentBox.
	newMail setRead.
	self sentBox addMail: newMail.
	self indexEntry: newMail.
	^ newMail