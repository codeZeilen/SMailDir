accessing
mails

	^ mails select: [:m | m box ~= self archive trashBox]