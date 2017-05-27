mails
setAllMailsRead

	(self allMails select: [:m | m isUnread ]) do: [:m | m setRead].
	self changed.