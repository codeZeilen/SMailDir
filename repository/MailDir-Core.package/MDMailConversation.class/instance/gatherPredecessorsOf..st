initialize-release
gatherPredecessorsOf: aMail

	| mailIds mailIdsString mails |
	mailIdsString := (aMail header fieldNamed: 'in-reply-to' ifAbsent: [aMail header fieldNamed: 'references' ifAbsent: [^ {aMail}]]) mainValue.
	mailIds := mailIdsString findTokens: ','.
	mails := mailIds collect: [:id | self archive messageEntryForId: id ifAbsent: [nil]] thenSelect: [:m | m notNil].
	^ ((mails gather: [:m | self gatherPredecessorsOf: m]) asSet union: mails) union: {aMail}