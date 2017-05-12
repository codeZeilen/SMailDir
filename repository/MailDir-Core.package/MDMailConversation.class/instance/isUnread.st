testing
isUnread

	^ self mails anySatisfy: [:m | m isUnread]