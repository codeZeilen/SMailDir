as yet unclassified
allMails

	^ self mails , (self subBoxes gather: [:b | b allMails])