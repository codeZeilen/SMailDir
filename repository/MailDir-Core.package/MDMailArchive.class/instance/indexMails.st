indexing
indexMails

	self mailIdIndex: Dictionary new.
	self allMails
		do: [:m | self indexEntry: m]
	