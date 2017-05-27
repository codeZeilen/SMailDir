flags
= anotherMail

	^ anotherMail isEmail and: [self messageId = anotherMail messageId]