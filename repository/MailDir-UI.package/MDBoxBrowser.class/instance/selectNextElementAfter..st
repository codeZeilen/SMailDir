keyboard handling
selectNextElementAfter: aBlock

	| nextMail |
	nextMail := self determineNextEmailToSelect.
	aBlock value.
	self selectedElement: nextMail.
	self changed: #selectedElement. 