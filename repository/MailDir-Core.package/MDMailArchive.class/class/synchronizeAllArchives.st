synchronization
synchronizeAllArchives

	(self allInstances select: [:archive | archive isConfigured]) do: [:a | | inboxSize inbox |
		a synchronizeBoxes.
		inbox := a boxes detect: [:b | b boxName asLowercase = 'inbox'] ifNone: [].
		inbox ifNotNil: [inboxSize := (inbox mails select: [:m | m isUnread]) size].
		a synchronizeMessageEntries.
		inbox ifNotNil: [(inbox mails select: [:m | m isUnread]) size > inboxSize
			ifTrue: ["SampledSound playSoundNamed: 'croak'"]]]