accessing
oldestDate

	^ (self mails collect: [:m | m date]) min