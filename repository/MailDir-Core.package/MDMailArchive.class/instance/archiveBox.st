accessing
archiveBox

	self archiveBoxName isEmptyOrNil ifTrue: [^ nil].
	^ self boxNamed: self archiveBoxName