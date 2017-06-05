accessing
mails

	^ mails select: [:m | (m boxes includes: self archive trashBox) not]