accessing
newestDate

	^ (self mails collect: [:m | m date]) max