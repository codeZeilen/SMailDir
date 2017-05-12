initialize-release
determineStart

	| candidates |
	candidates := (self mails reject: [:m |
		(m header hasFieldNamed: 'in-reply-to') or: [m header hasFieldNamed: 'references']]).
	
	candidates size = 1
		ifTrue: [self startMail: candidates first]
		ifFalse: [self startMail: (self mails detect: [:m | m date = self oldestDate])]