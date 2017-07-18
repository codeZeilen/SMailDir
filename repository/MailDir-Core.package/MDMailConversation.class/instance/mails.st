accessing
mails

	^ mails select: [:m | (m boxes = {self archive trashBox}) not]