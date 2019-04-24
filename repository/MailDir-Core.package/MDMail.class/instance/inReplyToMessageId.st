meta information
inReplyToMessageId

	^ (self header fieldNamed: 'in-reply-to' 
		ifAbsent: [^ self messageId]) mainValue.