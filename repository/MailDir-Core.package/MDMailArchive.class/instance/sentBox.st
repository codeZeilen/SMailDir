boxes
sentBox
	
	self isSentBoxSet ifFalse: [^ nil].
	^ self boxNamed: self sentBoxName