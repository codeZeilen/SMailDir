boxes
archiveBox

	self isArchiveBoxSet ifFalse: [^ nil].
	^ self boxNamed: self archiveBoxName