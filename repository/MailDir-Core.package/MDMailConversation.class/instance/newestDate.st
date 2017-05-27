accessing
newestDate

	^ (self mails collect: [:m | m date])
		ifEmpty: [DateAndTime new] 
		ifNotEmptyDo: [:dates | dates max]