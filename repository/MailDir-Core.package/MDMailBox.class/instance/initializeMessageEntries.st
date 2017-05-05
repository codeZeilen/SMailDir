initialize-release
initializeMessageEntries

	self mails: (self allMessageFileEntries collect: [:file | MDMail newAt: file in: self ]).