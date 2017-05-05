mails
allMails

	^ self mails , (self subBoxes gather: [:b | b allMails])