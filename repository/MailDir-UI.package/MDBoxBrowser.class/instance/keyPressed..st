keyboard handling
keyPressed: character

	character = Character delete ifTrue: [self selectNextElementAfter: [self selectedElement moveToTrash]].
	
	character = Character space ifTrue: [
		self selectedElement isEmail ifTrue: [self selectedElement openRackStandardMorph]].
	
	character = $a ifTrue: [
		self selectedElement isEmail 
			ifTrue: [self selectNextElementAfter: [self selectedElement archiveMessage]].
		self selectedElement isMailConversation 
			ifTrue: [self selectedElement archiveConversation]].