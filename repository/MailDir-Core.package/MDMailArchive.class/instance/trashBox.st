boxes
trashBox

	self isTrashBoxSet ifFalse: [^ nil].
	^ self boxNamed: self trashBoxName