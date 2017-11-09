drag and drop
drop: anEmailOrConversation ontoBox: aBox shouldCopy: shouldCopy
	
	aBox isMailBox ifFalse: [^ false].
	
	anEmailOrConversation moveTo: aBox. 
	self previouslyBoxMovedTo: aBox.
	self changed: #boxes.
	^ false