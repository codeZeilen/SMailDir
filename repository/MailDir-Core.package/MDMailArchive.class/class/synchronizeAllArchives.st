synchronization
synchronizeAllArchives

	self allInstances do: [:a | | inboxSize inbox |
		a synchronizeBoxes.
		inbox := a boxes detect: [:b | b boxName = 'INBOX'].
		inboxSize := (inbox mails select: [:m | m isUnread]) size .
		a synchronizeMessageEntries.
		(inbox mails select: [:m | m isUnread]) size > inboxSize
			ifTrue: [SampledSound playSoundNamed: 'croak']]