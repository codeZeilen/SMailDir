as yet unclassified
initializeMessageEntries

	self mails: (self allMessageFileEntries collect: [:file | MDMessageEntry newAt: file in: self ]).