public
storeSentMail: aMailMessage

	| newMail |
	newMail := MDMail newFor: aMailMessage in: self sentBox.
	newMail setRead.
	newMail moveTo: self sentBox.
	self indexEntry: newMail.
	^ newMail