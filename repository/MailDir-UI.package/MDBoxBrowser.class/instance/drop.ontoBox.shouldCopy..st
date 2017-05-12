drag and drop
drop: anEmailOrConversation ontoBox: aBox shouldCopy: shouldCopy

	aBox isMailBox ifFalse: [^ false].
	
	anEmailOrConversation moveTo: aBox. 

	self changed: #boxes.
	^ false