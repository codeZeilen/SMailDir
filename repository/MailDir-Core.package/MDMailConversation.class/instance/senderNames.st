as yet unclassified
senderNames

	^ (self mails
		collect: [:ea | ea senderName])
		asSet
		asOrderedCollection
		joinSeparatedBy: ', '