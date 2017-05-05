indexing
indexMails

	self mailIdIndex: Dictionary new.
	(self boxes gather: [:b | b allMails])
		do: [:m | self indexEntry: m]
	