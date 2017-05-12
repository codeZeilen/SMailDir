initialize-release
determineMails

	self mails: (self gatherPredecessorsOf: self mails first) asOrderedCollection
	
	