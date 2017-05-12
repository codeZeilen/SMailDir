keyboard handling
keyPressed: character

	character = Character delete ifTrue: [
		self selectedElement isEmail ifTrue: [ | nextMail |
			nextMail := (self elementsOfBox: self selectedElement box) at: 
				((self elementsOfBox: self selectedElement box) indexOf: self selectedElement) + 1.
			self selectedElement moveToTrash.
			self selectedElement: nextMail.
			self changed: #selectedElement. ] ]