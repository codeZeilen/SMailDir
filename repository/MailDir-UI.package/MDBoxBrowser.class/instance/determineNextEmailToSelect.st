keyboard handling
determineNextEmailToSelect
		
	| elements element selectionIndex parentMailBox |
	parentMailBox := self selectedPath detect: [:e | e isMailBox].
	self selectedParent isMailConversation ifTrue: [
		self selectedParent mails size = 1 
			ifTrue: [elements := self elementsOfBox: parentMailBox.
					element := self selectedParent.]
			ifFalse: [elements := self elementsOfBox: self selectedParent.
					element := self selectedElement]].
	
	self selectedParent isMailBox ifTrue: [
		elements := self elementsOfBox: parentMailBox.
		element := self selectedElement.].	
		
	selectionIndex := (elements indexOf: element) + 1.
	selectionIndex := selectionIndex min: elements size - 1. "To account for the deleted element"
	^ elements at: selectionIndex.
	