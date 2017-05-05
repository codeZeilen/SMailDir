drag and drop
drag: entry

	(entry isEmail or: [entry isMailBox]) ifTrue: [^ entry].
	self halt.