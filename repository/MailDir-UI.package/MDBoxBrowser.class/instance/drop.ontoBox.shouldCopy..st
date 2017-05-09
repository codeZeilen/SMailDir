drag and drop
drop: anEmail ontoBox: aBox shouldCopy: shouldCopy

	aBox isMailBox ifFalse: [^ false].
	
	anEmail moveTo: aBox. 
	self changed: #boxes