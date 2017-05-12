drag and drop
drag: entry

	(entry isEmail or: [entry isMailBox] or: [entry isMailConversation]) ifTrue: [^ entry].