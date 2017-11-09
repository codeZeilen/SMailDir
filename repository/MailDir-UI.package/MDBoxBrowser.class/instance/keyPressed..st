keyboard handling
keyPressed: character

	character = Character delete ifTrue: [
		^ self selectNextElementAfter: [self selectedElement moveToTrash]].
	
	character = Character space ifTrue: [
		self selectedElement isEmail ifTrue: [
			[self selectedElement openRackStandardMorph] fork.
			^ true]].
	
	character = $a ifTrue: [
		self selectedElement isEmail 
			ifTrue: [^ self selectNextElementAfter: [self selectedElement moveToArchive]].
		self selectedElement isMailConversation 
			ifTrue: [^ self selectNextElementAfter: [self selectedElement moveToArchive]]].
		
	character = $j ifTrue: [
		((self selectedElement isEmail or: [self selectedElement isMailConversation])
			and: [self previouslyBoxMovedTo notNil])
				ifTrue: [^ self selectNextElementAfter: [self selectedElement moveTo: self previouslyBoxMovedTo]]]
	