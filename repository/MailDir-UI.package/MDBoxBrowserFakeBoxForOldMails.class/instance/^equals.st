comparing
= anotherBox

	anotherBox isMailBox ifFalse: [^ false].
	^ self mails = anotherBox mails
	