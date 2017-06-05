mails
wasMovedTo: aBox as: aFile

      (aBox boxName = 'INBOX' and: [aBox ~= self entries keys first] ) ifTrue: [self break].
	fileAccessMutex critical: [self addBox: aBox with: aFile] 